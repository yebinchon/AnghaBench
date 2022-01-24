#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int fts_info; int fts_level; int /*<<< orphan*/  fts_accpath; TYPE_1__* fts_statp; int /*<<< orphan*/  fts_name; int /*<<< orphan*/  fts_errno; int /*<<< orphan*/  fts_path; } ;
struct TYPE_11__ {int flags; scalar_t__ type; struct TYPE_11__* child; int /*<<< orphan*/  name; struct TYPE_11__* next; struct TYPE_11__* prev; struct TYPE_11__* parent; } ;
struct TYPE_10__ {int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_2__ NODE ;
typedef  TYPE_3__ FTSENT ;
typedef  int /*<<< orphan*/  FTS ;

/* Variables and functions */
 int /*<<< orphan*/  FNM_PATHNAME ; 
#define  FTS_D 133 
#define  FTS_DNR 132 
#define  FTS_DP 131 
#define  FTS_ERR 130 
#define  FTS_NS 129 
 int /*<<< orphan*/  FTS_SKIP ; 
#define  FTS_SL 128 
 scalar_t__ F_DIR ; 
 int F_IGN ; 
 int F_MAGIC ; 
 int F_NOCHANGE ; 
 int F_VISIT ; 
 int MISMATCHEXIT ; 
 char* FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 char* crc_total ; 
 scalar_t__ dflag ; 
 int /*<<< orphan*/  eflag ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ftsoptions ; 
 char* fullpath ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char) ; 
 scalar_t__ rflag ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_2__* root ; 
 scalar_t__ sflag ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,char*) ; 

__attribute__((used)) static int
FUNC19(void)
{
	FTS *t;
	FTSENT *p;
	NODE *ep, *level;
	int specdepth, rval;
	char *argv[2];
	char  dot[] = ".";
	argv[0] = dot;
	argv[1] = NULL;

	if ((t = FUNC7(argv, ftsoptions, NULL)) == NULL)
		FUNC10("fts_open: %s", FUNC15(errno));
	level = root;
	specdepth = rval = 0;
	while ((p = FUNC8(t)) != NULL) {
		if (FUNC2(p->fts_name, p->fts_path)) {
			FUNC9(t, p, FTS_SKIP);
			continue;
		}
		if (!FUNC4(p->fts_path)) {
			FUNC9(t, p, FTS_SKIP);
			continue;
		}
		switch(p->fts_info) {
		case FTS_D:
		case FTS_SL:
			break;
		case FTS_DP:
			if (specdepth > p->fts_level) {
				for (level = level->parent; level->prev;
				    level = level->prev)
					continue;
				--specdepth;
			}
			continue;
		case FTS_DNR:
		case FTS_ERR:
		case FTS_NS:
			FUNC18("%s: %s", FUNC0(p), FUNC15(p->fts_errno));
			continue;
		default:
			if (dflag)
				continue;
		}

		if (specdepth != p->fts_level)
			goto extra;
		for (ep = level; ep; ep = ep->next)
			if ((ep->flags & F_MAGIC &&
			    !FUNC5(ep->name, p->fts_name, FNM_PATHNAME)) ||
			    !FUNC14(ep->name, p->fts_name)) {
				ep->flags |= F_VISIT;
				if ((ep->flags & F_NOCHANGE) == 0 &&
				    FUNC3(ep, p))
					rval = MISMATCHEXIT;
				if (!(ep->flags & F_IGN) &&
				    ep->type == F_DIR &&
				    p->fts_info == FTS_D) {
					if (ep->child) {
						level = ep->child;
						++specdepth;
					}
				} else
					FUNC9(t, p, FTS_SKIP);
				break;
			}

		if (ep)
			continue;
 extra:
		if (!eflag && !(dflag && p->fts_info == FTS_SL)) {
			FUNC11("extra: %s", FUNC0(p));
			if (rflag) {
				if ((FUNC1(p->fts_statp->st_mode)
				    ? rmdir : unlink)(p->fts_accpath)) {
					FUNC11(", not removed: %s",
					    FUNC15(errno));
				} else
					FUNC11(", removed");
			}
			FUNC12('\n');
		}
		FUNC9(t, p, FTS_SKIP);
	}
	FUNC6(t);
	if (sflag)
		FUNC18("%s checksum: %u", fullpath, crc_total);
	return (rval);
}