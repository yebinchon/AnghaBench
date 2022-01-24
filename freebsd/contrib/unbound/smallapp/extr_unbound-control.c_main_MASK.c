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
typedef  int /*<<< orphan*/  v ;
typedef  int /*<<< orphan*/  WSADATA ;

/* Variables and functions */
 char* CONFIGFILE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int OPENSSL_INIT_ADD_ALL_CIPHERS ; 
 int OPENSSL_INIT_ADD_ALL_DIGESTS ; 
 int OPENSSL_INIT_LOAD_CRYPTO_STRINGS ; 
 int /*<<< orphan*/  OPENSSL_INIT_LOAD_SSL_STRINGS ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC13 (char*,char*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int,char**,char*) ; 
 scalar_t__ FUNC16 () ; 
 int FUNC17 (char const*,char*,int,int,char**) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (unsigned char*,unsigned int*,int) ; 
 void* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC22 (char const*) ; 
 scalar_t__ FUNC23 (char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 char* FUNC27 (char*,char*) ; 
 int /*<<< orphan*/  FUNC28 (int) ; 

int FUNC29(int argc, char* argv[])
{
	int c, ret;
	int quiet = 0;
	const char* cfgfile = CONFIGFILE;
	char* svr = NULL;
#ifdef USE_WINSOCK
	int r;
	WSADATA wsa_data;
#endif
#ifdef USE_THREAD_DEBUG
	/* stop the file output from unbound-control, overwrites the servers */
	extern int check_locking_order;
	check_locking_order = 0;
#endif /* USE_THREAD_DEBUG */
	FUNC18("unbound-control");
	FUNC19(NULL, 0, NULL);
	FUNC11();
#ifdef USE_WINSOCK
	/* use registry config file in preference to compiletime location */
	if(!(cfgfile=w_lookup_reg_str("Software\\Unbound", "ConfigFile")))
		cfgfile = CONFIGFILE;
#endif
	/* parse the options */
	while( (c=FUNC15(argc, argv, "c:s:qh")) != -1) {
		switch(c) {
		case 'c':
			cfgfile = optarg;
			break;
		case 's':
			svr = optarg;
			break;
		case 'q':
			quiet = 1;
			break;
		case '?':
		case 'h':
		default:
			FUNC26();
		}
	}
	argc -= optind;
	argv += optind;
	if(argc == 0)
		FUNC26();
	if(argc >= 1 && FUNC23(argv[0], "start")==0) {
		if(FUNC13("unbound", "unbound", "-c", cfgfile, 
			(char*)NULL) < 0) {
			FUNC14("could not exec unbound: %s",
				FUNC24(errno));
		}
	}
	if(argc >= 1 && FUNC23(argv[0], "stats_shm")==0) {
		FUNC22(cfgfile);
		return 0;
	}

#ifdef USE_WINSOCK
	if((r = WSAStartup(MAKEWORD(2,2), &wsa_data)) != 0)
		fatal_exit("WSAStartup failed: %s", wsa_strerror(r));
#endif

#ifdef HAVE_ERR_LOAD_CRYPTO_STRINGS
	ERR_load_crypto_strings();
#endif
#if OPENSSL_VERSION_NUMBER < 0x10100000 || !defined(HAVE_OPENSSL_INIT_SSL)
	FUNC0();
#endif
#if OPENSSL_VERSION_NUMBER < 0x10100000 || !defined(HAVE_OPENSSL_INIT_CRYPTO)
	FUNC5();
#else
	OPENSSL_init_crypto(OPENSSL_INIT_ADD_ALL_CIPHERS
		| OPENSSL_INIT_ADD_ALL_DIGESTS
		| OPENSSL_INIT_LOAD_CRYPTO_STRINGS, NULL);
#endif
#if OPENSSL_VERSION_NUMBER < 0x10100000 || !defined(HAVE_OPENSSL_INIT_SSL)
	(void)FUNC8();
#else
	(void)OPENSSL_init_ssl(OPENSSL_INIT_LOAD_SSL_STRINGS, NULL);
#endif

	if(!FUNC7()) {
		/* try to seed it */
		unsigned char buf[256];
		unsigned int seed=(unsigned)FUNC25(NULL) ^ (unsigned)FUNC16();
		unsigned int v = seed;
		size_t i;
		for(i=0; i<256/sizeof(v); i++) {
			FUNC21(buf+i*sizeof(v), &v, sizeof(v));
			v = v*seed + (unsigned int)i;
		}
		FUNC6(buf, 256);
		FUNC20("no entropy, seeding openssl PRNG with time\n");
	}

	ret = FUNC17(cfgfile, svr, quiet, argc, argv);

#ifdef USE_WINSOCK
	WSACleanup();
#endif
	FUNC12();
	return ret;
}