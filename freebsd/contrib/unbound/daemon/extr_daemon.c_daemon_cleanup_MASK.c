#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct daemon {int num; int /*<<< orphan*/ * cfg; int /*<<< orphan*/ * dnscenv; int /*<<< orphan*/ * dtenv; int /*<<< orphan*/  superalloc; int /*<<< orphan*/ * workers; int /*<<< orphan*/  rc; TYPE_2__* env; int /*<<< orphan*/ * views; int /*<<< orphan*/ * respip_set; int /*<<< orphan*/ * local_zones; } ;
struct TYPE_4__ {scalar_t__ auth_zones; int /*<<< orphan*/ * msg_cache; TYPE_1__* rrset_cache; } ;
struct TYPE_3__ {int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct daemon*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void 
FUNC14(struct daemon* daemon)
{
	int i;
	FUNC7(daemon);
	/* before stopping main worker, handle signals ourselves, so we
	   don't die on multiple reload signals for example. */
	FUNC10();
	FUNC8(NULL);
	/* clean up caches because
	 * a) RRset IDs will be recycled after a reload, causing collisions
	 * b) validation config can change, thus rrset, msg, keycache clear */
	FUNC11(&daemon->env->rrset_cache->table);
	FUNC11(daemon->env->msg_cache);
	FUNC6(daemon->local_zones);
	daemon->local_zones = NULL;
	FUNC9(daemon->respip_set);
	daemon->respip_set = NULL;
	FUNC12(daemon->views);
	daemon->views = NULL;
	if(daemon->env->auth_zones)
		FUNC1(daemon->env->auth_zones);
	/* key cache is cleared by module desetup during next daemon_fork() */
	FUNC2(daemon->rc);
	for(i=0; i<daemon->num; i++)
		FUNC13(daemon->workers[i]);
	FUNC5(daemon->workers);
	daemon->workers = NULL;
	daemon->num = 0;
	FUNC0(&daemon->superalloc);
#ifdef USE_DNSTAP
	dt_delete(daemon->dtenv);
	daemon->dtenv = NULL;
#endif
#ifdef USE_DNSCRYPT
	dnsc_delete(daemon->dnscenv);
	daemon->dnscenv = NULL;
#endif
	daemon->cfg = NULL;
}