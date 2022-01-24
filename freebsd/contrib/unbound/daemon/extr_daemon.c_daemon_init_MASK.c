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
struct module_env {struct module_env* env; int /*<<< orphan*/  tcl; int /*<<< orphan*/  acl; int /*<<< orphan*/  auth_zones; int /*<<< orphan*/  time_boot; int /*<<< orphan*/  time_last_stat; int /*<<< orphan*/  superalloc; int /*<<< orphan*/  mods; scalar_t__ need_to_exit; } ;
struct daemon {struct daemon* env; int /*<<< orphan*/  tcl; int /*<<< orphan*/  acl; int /*<<< orphan*/  auth_zones; int /*<<< orphan*/  time_boot; int /*<<< orphan*/  time_last_stat; int /*<<< orphan*/  superalloc; int /*<<< orphan*/  mods; scalar_t__ need_to_exit; } ;
typedef  int /*<<< orphan*/  WSADATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int OPENSSL_INIT_ADD_ALL_CIPHERS ; 
 int OPENSSL_INIT_ADD_ALL_DIGESTS ; 
 int OPENSSL_INIT_LOAD_CRYPTO_STRINGS ; 
 int /*<<< orphan*/  OPENSSL_INIT_LOAD_SSL_STRINGS ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ SECSuccess ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 void* comp_meth ; 
 int /*<<< orphan*/  FUNC16 (struct module_env*) ; 
 int /*<<< orphan*/  FUNC17 (struct module_env*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/  FUNC19 (struct module_env*) ; 
 scalar_t__ FUNC20 () ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (unsigned int) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 

struct daemon* 
FUNC34(void)
{
	struct daemon* daemon = (struct daemon*)FUNC14(1, 
		sizeof(struct daemon));
#ifdef USE_WINSOCK
	int r;
	WSADATA wsa_data;
#endif
	if(!daemon)
		return NULL;
#ifdef USE_WINSOCK
	r = WSAStartup(MAKEWORD(2,2), &wsa_data);
	if(r != 0) {
		fatal_exit("could not init winsock. WSAStartup: %s",
			wsa_strerror(r));
	}
#endif /* USE_WINSOCK */
	FUNC24();
	FUNC15();
#ifdef HAVE_SSL
#  ifdef HAVE_ERR_LOAD_CRYPTO_STRINGS
	ERR_load_crypto_strings();
#  endif
#if OPENSSL_VERSION_NUMBER < 0x10100000 || !defined(HAVE_OPENSSL_INIT_SSL)
	ERR_load_SSL_strings();
#endif
#  ifdef USE_GOST
	(void)sldns_key_EVP_load_gost_id();
#  endif
#  if OPENSSL_VERSION_NUMBER < 0x10100000 || !defined(HAVE_OPENSSL_INIT_CRYPTO)
	OpenSSL_add_all_algorithms();
#  else
	OPENSSL_init_crypto(OPENSSL_INIT_ADD_ALL_CIPHERS
		| OPENSSL_INIT_ADD_ALL_DIGESTS
		| OPENSSL_INIT_LOAD_CRYPTO_STRINGS, NULL);
#  endif
#  if HAVE_DECL_SSL_COMP_GET_COMPRESSION_METHODS
	/* grab the COMP method ptr because openssl leaks it */
	comp_meth = (void*)SSL_COMP_get_compression_methods();
#  endif
#  if OPENSSL_VERSION_NUMBER < 0x10100000 || !defined(HAVE_OPENSSL_INIT_SSL)
	(void)SSL_library_init();
#  else
	(void)OPENSSL_init_ssl(OPENSSL_INIT_LOAD_SSL_STRINGS, NULL);
#  endif
#  if defined(HAVE_SSL) && defined(OPENSSL_THREADS) && !defined(THREADS_DISABLED)
	if(!ub_openssl_lock_init())
		fatal_exit("could not init openssl locks");
#  endif
#elif defined(HAVE_NSS)
	if(NSS_NoDB_Init(NULL) != SECSuccess)
		fatal_exit("could not init NSS");
#endif /* HAVE_SSL or HAVE_NSS */
#ifdef HAVE_TZSET
	/* init timezone info while we are not chrooted yet */
	tzset();
#endif
	/* open /dev/random if needed */
	FUNC32((unsigned)FUNC29(NULL)^(unsigned)FUNC20()^0xe67);
	daemon->need_to_exit = 0;
	FUNC23(&daemon->mods);
	if(!(daemon->env = (struct module_env*)FUNC14(1, 
		sizeof(*daemon->env)))) {
		FUNC19(daemon);
		return NULL;
	}
	/* init edns_known_options */
	if(!FUNC17(daemon->env)) {
		FUNC19(daemon->env);
		FUNC19(daemon);
		return NULL;
	}
	FUNC12(&daemon->superalloc, NULL, 0);
	daemon->acl = FUNC10();
	if(!daemon->acl) {
		FUNC16(daemon->env);
		FUNC19(daemon->env);
		FUNC19(daemon);
		return NULL;
	}
	daemon->tcl = FUNC27();
	if(!daemon->tcl) {
		FUNC11(daemon->acl);
		FUNC16(daemon->env);
		FUNC19(daemon->env);
		FUNC19(daemon);
		return NULL;
	}
	if(FUNC21(&daemon->time_boot, NULL) < 0)
		FUNC22("gettimeofday: %s", FUNC26(errno));
	daemon->time_last_stat = daemon->time_boot;
	if((daemon->env->auth_zones = FUNC13()) == 0) {
		FUNC11(daemon->acl);
		FUNC28(daemon->tcl);
		FUNC16(daemon->env);
		FUNC19(daemon->env);
		FUNC19(daemon);
		return NULL;
	}
	return daemon;	
}