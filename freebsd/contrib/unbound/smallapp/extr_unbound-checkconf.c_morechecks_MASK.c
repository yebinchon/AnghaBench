#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct config_file {scalar_t__ verbosity; int num_threads; scalar_t__ edns_buffer_size; scalar_t__ msg_buffer_size; char* chrootdir; char* directory; char* pidfile; char* logfile; char* module_conf; char* username; char* control_key_file; char* control_cert_file; int /*<<< orphan*/  server_cert_file; int /*<<< orphan*/  server_key_file; scalar_t__ control_use_cert; scalar_t__ remote_control_enable; int /*<<< orphan*/  ipsecmod_hook; scalar_t__ ipsecmod_enabled; int /*<<< orphan*/  dlv_anchor_file; int /*<<< orphan*/  trusted_keys_file_list; int /*<<< orphan*/  auto_trust_anchor_file_list; int /*<<< orphan*/  trust_anchor_file_list; int /*<<< orphan*/  root_hints; int /*<<< orphan*/  do_tcp; int /*<<< orphan*/  do_udp; scalar_t__ prefer_ip6; int /*<<< orphan*/  do_ip6; int /*<<< orphan*/  do_ip4; int /*<<< orphan*/  forwards; int /*<<< orphan*/  stubs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_file*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,char*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 char* FUNC9 (char*,struct config_file*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (struct config_file*) ; 
 scalar_t__ FUNC16 (struct config_file*) ; 
 scalar_t__ FUNC17 (char*,char*) ; 
 char* FUNC18 (char*) ; 
 int FUNC19 (char*) ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC22 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC23 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC25(struct config_file* cfg)
{
	FUNC24("stub-host", cfg->stubs);
	FUNC24("forward-host", cfg->forwards);
	FUNC12(cfg);
	FUNC0(cfg);
	FUNC21(cfg);

	if(cfg->verbosity < 0)
		FUNC8("verbosity value < 0");
	if(cfg->num_threads <= 0 || cfg->num_threads > 10000)
		FUNC8("num_threads value weird");
	if(!cfg->do_ip4 && !cfg->do_ip6)
		FUNC8("ip4 and ip6 are both disabled, pointless");
	if(!cfg->do_ip6 && cfg->prefer_ip6)
		FUNC8("cannot prefer and disable ip6, pointless");
	if(!cfg->do_udp && !cfg->do_tcp)
		FUNC8("udp and tcp are both disabled, pointless");
	if(cfg->edns_buffer_size > cfg->msg_buffer_size)
		FUNC8("edns-buffer-size larger than msg-buffer-size, "
			"answers will not fit in processing buffer");
#ifdef UB_ON_WINDOWS
	w_config_adjust_directory(cfg);
#endif
	if(cfg->chrootdir && cfg->chrootdir[0] &&
		cfg->chrootdir[FUNC19(cfg->chrootdir)-1] == '/')
		FUNC8("chootdir %s has trailing slash '/' please remove.",
			cfg->chrootdir);
	if(cfg->chrootdir && cfg->chrootdir[0] &&
		!FUNC13(cfg->chrootdir)) {
		FUNC8("bad chroot directory");
	}
	if(cfg->directory && cfg->directory[0]) {
		char* ad = FUNC9(cfg->directory, cfg, 0);
		if(!ad) FUNC8("out of memory");
		if(!FUNC13(ad)) FUNC8("bad chdir directory");
		FUNC10(ad);
	}
	if( (cfg->chrootdir && cfg->chrootdir[0]) ||
	    (cfg->directory && cfg->directory[0])) {
		if(cfg->pidfile && cfg->pidfile[0]) {
			char* ad = (cfg->pidfile[0]=='/')?FUNC18(cfg->pidfile):
				FUNC9(cfg->pidfile, cfg, 1);
			char* bd = FUNC1(ad);
			if(bd && !FUNC13(bd))
				FUNC8("pidfile directory does not exist");
			FUNC10(ad);
		}
		if(cfg->logfile && cfg->logfile[0]) {
			char* ad = FUNC9(cfg->logfile, cfg, 1);
			char* bd = FUNC1(ad);
			if(bd && !FUNC13(bd))
				FUNC8("logfile directory does not exist");
			FUNC10(ad);
		}
	}

	FUNC2("file with root-hints",
		cfg->root_hints, cfg->chrootdir, cfg);
	FUNC2("trust-anchor-file",
		cfg->trust_anchor_file_list, cfg->chrootdir, cfg);
	FUNC2("auto-trust-anchor-file",
		cfg->auto_trust_anchor_file_list, cfg->chrootdir, cfg);
	FUNC3("trusted-keys-file",
		cfg->trusted_keys_file_list, cfg->chrootdir, cfg);
	FUNC4("dlv-anchor-file", &cfg->dlv_anchor_file,
		cfg->chrootdir, cfg);
#ifdef USE_IPSECMOD
	if(cfg->ipsecmod_enabled && strstr(cfg->module_conf, "ipsecmod")) {
		/* only check hook if enabled */
		check_chroot_string("ipsecmod-hook", &cfg->ipsecmod_hook,
			cfg->chrootdir, cfg);
	}
#endif
	/* remove chroot setting so that modules are not stripping pathnames*/
	FUNC10(cfg->chrootdir);
	cfg->chrootdir = NULL;

	/* check that the modules listed in module_conf exist */
	FUNC5(cfg->module_conf);

	/* There should be no reason for 'respip' module not to work with
	 * dns64, but it's not explicitly confirmed,  so the combination is
	 * excluded below.   It's simply unknown yet for the combination of
	 * respip and other modules. */
	if(FUNC17(cfg->module_conf, "iterator") != 0
		&& FUNC17(cfg->module_conf, "validator iterator") != 0
		&& FUNC17(cfg->module_conf, "dns64 validator iterator") != 0
		&& FUNC17(cfg->module_conf, "dns64 iterator") != 0
		&& FUNC17(cfg->module_conf, "respip iterator") != 0
		&& FUNC17(cfg->module_conf, "respip validator iterator") != 0
#ifdef WITH_PYTHONMODULE
		&& strcmp(cfg->module_conf, "python iterator") != 0
		&& strcmp(cfg->module_conf, "python validator iterator") != 0
		&& strcmp(cfg->module_conf, "validator python iterator") != 0
		&& strcmp(cfg->module_conf, "dns64 python iterator") != 0
		&& strcmp(cfg->module_conf, "dns64 python validator iterator") != 0
		&& strcmp(cfg->module_conf, "dns64 validator python iterator") != 0
		&& strcmp(cfg->module_conf, "python dns64 iterator") != 0
		&& strcmp(cfg->module_conf, "python dns64 validator iterator") != 0
#endif
#ifdef USE_CACHEDB
		&& strcmp(cfg->module_conf, "validator cachedb iterator") != 0
		&& strcmp(cfg->module_conf, "cachedb iterator") != 0
		&& strcmp(cfg->module_conf, "dns64 validator cachedb iterator") != 0
		&& strcmp(cfg->module_conf, "dns64 cachedb iterator") != 0
#endif
#if defined(WITH_PYTHONMODULE) && defined(USE_CACHEDB)
		&& strcmp(cfg->module_conf, "python dns64 cachedb iterator") != 0
		&& strcmp(cfg->module_conf, "python dns64 validator cachedb iterator") != 0
		&& strcmp(cfg->module_conf, "dns64 python cachedb iterator") != 0
		&& strcmp(cfg->module_conf, "dns64 python validator cachedb iterator") != 0
		&& strcmp(cfg->module_conf, "python cachedb iterator") != 0
		&& strcmp(cfg->module_conf, "python validator cachedb iterator") != 0
		&& strcmp(cfg->module_conf, "cachedb python iterator") != 0
		&& strcmp(cfg->module_conf, "validator cachedb python iterator") != 0
		&& strcmp(cfg->module_conf, "validator python cachedb iterator") != 0
#endif
#ifdef CLIENT_SUBNET
		&& strcmp(cfg->module_conf, "subnetcache iterator") != 0
		&& strcmp(cfg->module_conf, "subnetcache validator iterator") != 0
		&& strcmp(cfg->module_conf, "dns64 subnetcache iterator") != 0
		&& strcmp(cfg->module_conf, "dns64 subnetcache validator iterator") != 0
#endif
#if defined(WITH_PYTHONMODULE) && defined(CLIENT_SUBNET)
		&& strcmp(cfg->module_conf, "python subnetcache iterator") != 0
		&& strcmp(cfg->module_conf, "subnetcache python iterator") != 0
		&& strcmp(cfg->module_conf, "python subnetcache validator iterator") != 0
		&& strcmp(cfg->module_conf, "subnetcache python validator iterator") != 0
		&& strcmp(cfg->module_conf, "subnetcache validator python iterator") != 0
#endif
#ifdef USE_IPSECMOD
		&& strcmp(cfg->module_conf, "ipsecmod iterator") != 0
		&& strcmp(cfg->module_conf, "ipsecmod validator iterator") != 0
#endif
#if defined(WITH_PYTHONMODULE) && defined(USE_IPSECMOD)
		&& strcmp(cfg->module_conf, "python ipsecmod iterator") != 0
		&& strcmp(cfg->module_conf, "ipsecmod python iterator") != 0
		&& strcmp(cfg->module_conf, "ipsecmod validator iterator") != 0
		&& strcmp(cfg->module_conf, "python ipsecmod validator iterator") != 0
		&& strcmp(cfg->module_conf, "ipsecmod python validator iterator") != 0
		&& strcmp(cfg->module_conf, "ipsecmod validator python iterator") != 0
#endif
		) {
		FUNC8("module conf '%s' is not known to work",
			cfg->module_conf);
	}

#ifdef HAVE_GETPWNAM
	if(cfg->username && cfg->username[0]) {
		if(getpwnam(cfg->username) == NULL)
			fatal_exit("user '%s' does not exist.", cfg->username);
#  ifdef HAVE_ENDPWENT
		endpwent();
#  endif
	}
#endif
	if(cfg->remote_control_enable && FUNC16(cfg)
		&& cfg->control_use_cert) {
		FUNC4("server-key-file", &cfg->server_key_file,
			cfg->chrootdir, cfg);
		FUNC4("server-cert-file", &cfg->server_cert_file,
			cfg->chrootdir, cfg);
		if(!FUNC14(cfg->control_key_file))
			FUNC8("control-key-file: \"%s\" does not exist",
				cfg->control_key_file);
		if(!FUNC14(cfg->control_cert_file))
			FUNC8("control-cert-file: \"%s\" does not exist",
				cfg->control_cert_file);
	}

	FUNC15(cfg);
	FUNC22(cfg);
#ifdef CLIENT_SUBNET
	ecs_conf_checks(cfg);
#endif
}