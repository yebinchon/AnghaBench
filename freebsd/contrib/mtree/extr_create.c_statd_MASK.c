#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uid_t ;
typedef  scalar_t__ u_short ;
typedef  int u_long ;
typedef  int /*<<< orphan*/  u ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  m ;
typedef  int gid_t ;
typedef  int /*<<< orphan*/  g ;
typedef  int /*<<< orphan*/  f ;
struct TYPE_7__ {TYPE_1__* fts_statp; struct TYPE_7__* fts_link; } ;
struct TYPE_6__ {int st_mode; int st_gid; int st_uid; int st_flags; } ;
typedef  TYPE_2__ FTSENT ;
typedef  int /*<<< orphan*/  FTS ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int F_FLAGS ; 
 int F_GID ; 
 int F_GNAME ; 
 int F_MODE ; 
 scalar_t__ F_NETBSD6 ; 
 int F_NLINK ; 
 int F_UID ; 
 int F_UNAME ; 
 int MBITS ; 
 int MTREE_MAXFLAGS ; 
 int MTREE_MAXGID ; 
 int MTREE_MAXMODE ; 
 int MTREE_MAXUID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ dflag ; 
 scalar_t__ errno ; 
 char* FUNC3 (int,char*) ; 
 scalar_t__ flavor ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int,int) ; 
 int keys ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 char* FUNC11 (int,int) ; 

__attribute__((used)) static int
FUNC12(FILE *fp, FTS *t, FTSENT *parent, uid_t *puid, gid_t *pgid, mode_t *pmode,
    u_long *pflags)
{
	FTSENT *p;
	gid_t sgid;
	uid_t suid;
	mode_t smode;
	u_long sflags = 0;
	const char *name = NULL;
	gid_t savegid;
	uid_t saveuid;
	mode_t savemode;
	u_long saveflags;
	u_short maxgid, maxuid, maxmode, maxflags;
	u_short g[MTREE_MAXGID], u[MTREE_MAXUID],
		m[MTREE_MAXMODE], f[MTREE_MAXFLAGS];
	static int first = 1;

	savegid = *pgid;
	saveuid = *puid;
	savemode = *pmode;
	saveflags = *pflags;
	if ((p = FUNC6(t, 0)) == NULL) {
		if (errno)
			FUNC9("%s: %s", FUNC1(parent), FUNC10(errno));
		return (1);
	}

	FUNC8(g, 0, sizeof(g));
	FUNC8(u, 0, sizeof(u));
	FUNC8(m, 0, sizeof(m));
	FUNC8(f, 0, sizeof(f));

	maxuid = maxgid = maxmode = maxflags = 0;
	for (; p; p = p->fts_link) {
		if (flavor == F_NETBSD6 || !dflag ||
		    (dflag && FUNC2(p->fts_statp->st_mode))) {
			smode = p->fts_statp->st_mode & MBITS;
			if (smode < MTREE_MAXMODE && ++m[smode] > maxmode) {
				savemode = smode;
				maxmode = m[smode];
			}
			sgid = p->fts_statp->st_gid;
			if (sgid < MTREE_MAXGID && ++g[sgid] > maxgid) {
				savegid = sgid;
				maxgid = g[sgid];
			}
			suid = p->fts_statp->st_uid;
			if (suid < MTREE_MAXUID && ++u[suid] > maxuid) {
				saveuid = suid;
				maxuid = u[suid];
			}

#if HAVE_STRUCT_STAT_ST_FLAGS
			sflags = FLAGS2INDEX(p->fts_statp->st_flags);
			if (sflags < MTREE_MAXFLAGS && ++f[sflags] > maxflags) {
				saveflags = p->fts_statp->st_flags;
				maxflags = f[sflags];
			}
#endif
		}
	}
	/*
	 * If the /set record is the same as the last one we do not need to
	 * output a new one.  So first we check to see if anything changed.
	 * Note that we always output a /set record for the first directory.
	 */
	if (((keys & (F_UNAME | F_UID)) && (*puid != saveuid)) ||
	    ((keys & (F_GNAME | F_GID)) && (*pgid != savegid)) ||
	    ((keys & F_MODE) && (*pmode != savemode)) || 
	    ((keys & F_FLAGS) && (*pflags != saveflags)) ||
	    first) {
		first = 0;
		if (flavor != F_NETBSD6 && dflag)
			FUNC4(fp, "/set type=dir");
		else
			FUNC4(fp, "/set type=file");
		if (keys & (F_UID | F_UNAME)) {
			if (keys & F_UNAME &&
			    (name = FUNC11(saveuid, 1)) != NULL)
				FUNC4(fp, " uname=%s", name);
			if (keys & F_UID || (keys & F_UNAME && name == NULL))
				FUNC4(fp, " uid=%lu", (u_long)saveuid);
		}
		if (keys & (F_GID | F_GNAME)) {
			if (keys & F_GNAME &&
			    (name = FUNC7(savegid, 1)) != NULL)
				FUNC4(fp, " gname=%s", name);
			if (keys & F_GID || (keys & F_GNAME && name == NULL))
				FUNC4(fp, " gid=%lu", (u_long)savegid);
		}
		if (keys & F_MODE)
			FUNC4(fp, " mode=%#lo", (u_long)savemode);
		if (keys & F_NLINK)
			FUNC4(fp, " nlink=1");
		if (keys & F_FLAGS) {
			char *str = FUNC3(saveflags, "none");
			FUNC4(fp, " flags=%s", str);
			FUNC5(str);
		}
		FUNC4(fp, "\n");
		*puid = saveuid;
		*pgid = savegid;
		*pmode = savemode;
		*pflags = saveflags;
	}
	return (0);
}