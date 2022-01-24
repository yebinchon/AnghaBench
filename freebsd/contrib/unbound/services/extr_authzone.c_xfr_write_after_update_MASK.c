#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmpfile ;
struct module_env {TYPE_3__* auth_zones; struct config_file* cfg; } ;
struct config_file {char* chrootdir; } ;
struct auth_zone {scalar_t__* zonefile; int /*<<< orphan*/  lock; } ;
struct auth_xfer {TYPE_2__* task_transfer; int /*<<< orphan*/  lock; int /*<<< orphan*/  dclass; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {TYPE_1__* master; } ;
struct TYPE_4__ {scalar_t__ http; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 struct auth_zone* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_xfer*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct auth_zone*,char*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void
FUNC16(struct auth_xfer* xfr, struct module_env* env)
{
	struct config_file* cfg = env->cfg;
	struct auth_zone* z;
	char tmpfile[1024];
	char* zfilename;
	FUNC5(&xfr->lock);

	/* get lock again, so it is a readlock and concurrently queries
	 * can be answered */
	FUNC6(&env->auth_zones->lock);
	z = FUNC0(env->auth_zones, xfr->name, xfr->namelen,
		xfr->dclass);
	if(!z) {
		FUNC7(&env->auth_zones->lock);
		/* the zone is gone, ignore xfr results */
		FUNC4(&xfr->lock);
		return;
	}
	FUNC6(&z->lock);
	FUNC4(&xfr->lock);
	FUNC7(&env->auth_zones->lock);

	if(z->zonefile == NULL || z->zonefile[0] == 0) {
		FUNC7(&z->lock);
		/* no write needed, no zonefile set */
		return;
	}
	zfilename = z->zonefile;
	if(cfg->chrootdir && cfg->chrootdir[0] && FUNC13(zfilename,
		cfg->chrootdir, FUNC12(cfg->chrootdir)) == 0)
		zfilename += FUNC12(cfg->chrootdir);

	/* write to tempfile first */
	if((size_t)FUNC12(zfilename) + 16 > sizeof(tmpfile)) {
		FUNC15(VERB_ALGO, "tmpfilename too long, cannot update "
			" zonefile %s", zfilename);
		FUNC7(&z->lock);
		return;
	}
	FUNC10(tmpfile, sizeof(tmpfile), "%s.tmp%u", zfilename,
		(unsigned)FUNC3());
	if(xfr->task_transfer->master->http) {
		/* use the stored chunk list to write them */
		if(!FUNC1(xfr, tmpfile)) {
			FUNC14(tmpfile);
			FUNC7(&z->lock);
		}
	} else if(!FUNC2(z, tmpfile)) {
		FUNC14(tmpfile);
		FUNC7(&z->lock);
		return;
	}
	if(FUNC9(tmpfile, zfilename) < 0) {
		FUNC8("could not rename(%s, %s): %s", tmpfile, zfilename,
			FUNC11(errno));
		FUNC14(tmpfile);
		FUNC7(&z->lock);
		return;
	}
	FUNC7(&z->lock);
}