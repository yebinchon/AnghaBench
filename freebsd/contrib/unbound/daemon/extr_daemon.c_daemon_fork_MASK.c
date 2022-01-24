#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct daemon {int use_response_ip; TYPE_2__** workers; scalar_t__ need_to_exit; int /*<<< orphan*/ * ports; TYPE_4__* cfg; int /*<<< orphan*/  mods; TYPE_1__* env; int /*<<< orphan*/  respip_set; int /*<<< orphan*/  views; int /*<<< orphan*/  local_zones; int /*<<< orphan*/  dnscenv; int /*<<< orphan*/  tcl; int /*<<< orphan*/  acl; } ;
struct TYPE_16__ {scalar_t__ dnscrypt; } ;
struct TYPE_15__ {scalar_t__ need_to_exit; } ;
struct TYPE_14__ {int /*<<< orphan*/  auth_zones; } ;

/* Variables and functions */
 int /*<<< orphan*/  PACKAGE_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct daemon*) ; 
 int /*<<< orphan*/  FUNC3 (struct daemon*) ; 
 int /*<<< orphan*/  FUNC4 (struct daemon*) ; 
 int /*<<< orphan*/  FUNC5 (struct daemon*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct daemon*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_4__*,int*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct daemon*) ; 
 int /*<<< orphan*/  FUNC21 (struct daemon*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 

void 
FUNC28(struct daemon* daemon)
{
	int have_view_respip_cfg = 0;

	FUNC11(daemon);
	if(!(daemon->views = FUNC25()))
		FUNC8("Could not create views: out of memory");
	/* create individual views and their localzone/data trees */
	if(!FUNC24(daemon->views, daemon->cfg))
		FUNC8("Could not set up views");

	if(!FUNC0(daemon->acl, daemon->cfg, daemon->views))
		FUNC8("Could not setup access control list");
	if(!FUNC23(daemon->tcl, daemon->cfg))
		FUNC8("Could not setup TCP connection limits");
	if(daemon->cfg->dnscrypt) {
#ifdef USE_DNSCRYPT
		daemon->dnscenv = dnsc_create();
		if (!daemon->dnscenv)
			fatal_exit("dnsc_create failed");
		dnsc_apply_cfg(daemon->dnscenv, daemon->cfg);
#else
		FUNC8("dnscrypt enabled in config but unbound was not built with "
				   "dnscrypt support");
#endif
	}
	/* create global local_zones */
	if(!(daemon->local_zones = FUNC10()))
		FUNC8("Could not create local zones: out of memory");
	if(!FUNC9(daemon->local_zones, daemon->cfg))
		FUNC8("Could not set up local zones");

	/* process raw response-ip configuration data */
	if(!(daemon->respip_set = FUNC16()))
		FUNC8("Could not create response IP set");
	if(!FUNC15(daemon->respip_set, daemon->cfg))
		FUNC8("Could not set up response IP set");
	if(!FUNC18(daemon->views, daemon->cfg,
		&have_view_respip_cfg))
		FUNC8("Could not set up per-view response IP sets");
	daemon->use_response_ip = !FUNC17(daemon->respip_set) ||
		have_view_respip_cfg;
	
	/* read auth zonefiles */
	if(!FUNC1(daemon->env->auth_zones, daemon->cfg, 1))
		FUNC8("auth_zones could not be setup");

	/* setup modules */
	FUNC3(daemon);

	/* response-ip-xxx options don't work as expected without the respip
	 * module.  To avoid run-time operational surprise we reject such
	 * configuration. */
	if(daemon->use_response_ip &&
		FUNC14(&daemon->mods, "respip") < 0)
		FUNC8("response-ip options require respip module");

	/* first create all the worker structures, so we can pass
	 * them to the newly created threads. 
	 */
	FUNC2(daemon);

#if defined(HAVE_EV_LOOP) || defined(HAVE_EV_DEFAULT_LOOP)
	/* in libev the first inited base gets signals */
	if(!worker_init(daemon->workers[0], daemon->cfg, daemon->ports[0], 1))
		fatal_exit("Could not initialize main thread");
#endif
	
	/* Now create the threads and init the workers.
	 * By the way, this is thread #0 (the main thread).
	 */
	FUNC4(daemon);

	/* Special handling for the main thread. This is the thread
	 * that handles signals and remote control.
	 */
#if !(defined(HAVE_EV_LOOP) || defined(HAVE_EV_DEFAULT_LOOP))
	/* libevent has the last inited base get signals (or any base) */
	if(!FUNC26(daemon->workers[0], daemon->cfg, daemon->ports[0], 1))
		FUNC8("Could not initialize main thread");
#endif
	FUNC22(daemon->workers[0]);

	if (!FUNC20(daemon))
		FUNC13("SHM has failed");

	/* Start resolver service on main thread. */
#ifdef HAVE_SYSTEMD
	sd_notify(0, "READY=1");
#endif
	FUNC12("start of service (%s).", PACKAGE_STRING);
	FUNC27(daemon->workers[0]);
#ifdef HAVE_SYSTEMD
	if (daemon->workers[0]->need_to_exit)
		sd_notify(0, "STOPPING=1");
	else
		sd_notify(0, "RELOADING=1");
#endif
	FUNC12("service stopped (%s).", PACKAGE_STRING);

	/* we exited! a signal happened! Stop other threads */
	FUNC5(daemon);

	/* Shutdown SHM */
	FUNC21(daemon);

	daemon->need_to_exit = daemon->workers[0]->need_to_exit;
}