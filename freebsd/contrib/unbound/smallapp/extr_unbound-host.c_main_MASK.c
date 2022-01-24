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
struct ub_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*) ; 
 int OPENSSL_INIT_ADD_ALL_CIPHERS ; 
 int OPENSSL_INIT_ADD_ALL_DIGESTS ; 
 int OPENSSL_INIT_LOAD_CRYPTO_STRINGS ; 
 int /*<<< orphan*/  OPENSSL_INIT_LOAD_SSL_STRINGS ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* ROOT_ANCHOR_FILE ; 
 scalar_t__ SECSuccess ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct ub_ctx*,char*,char*,char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct ub_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct ub_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct ub_ctx*,char*) ; 
 struct ub_ctx* FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct ub_ctx*,int) ; 
 scalar_t__ FUNC19 (struct ub_ctx*,char*,char**) ; 
 int /*<<< orphan*/  FUNC20 (struct ub_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct ub_ctx*,char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (struct ub_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  verb ; 

int FUNC24(int argc, char* argv[])
{
	int c;
	char* qclass = NULL;
	char* qtype = NULL;
	struct ub_ctx* ctx = NULL;
	int debuglevel = 0;
	
	ctx = FUNC17();
	if(!ctx) {
		FUNC9(stderr, "error: out of memory\n");
		FUNC8(1);
	}
	/* no need to fetch additional targets, we only do few lookups */
	FUNC7(FUNC21(ctx, "target-fetch-policy:", "0 0 0 0 0"));

	/* parse the options */
	while( (c=FUNC11(argc, argv, "46DF:c:df:hrt:vy:C:")) != -1) {
		switch(c) {
		case '4':
			FUNC7(FUNC21(ctx, "do-ip6:", "no"));
			break;
		case '6':
			FUNC7(FUNC21(ctx, "do-ip4:", "no"));
			break;
		case 'c':
			qclass = optarg;
			break;
		case 'C':
			FUNC7(FUNC16(ctx, optarg));
			break;
		case 'D':
			FUNC7(FUNC15(ctx, ROOT_ANCHOR_FILE));
			break;
		case 'd':
			debuglevel++;
			if(debuglevel < 2) 
				debuglevel = 2; /* at least VERB_DETAIL */
			break;
		case 'r':
			FUNC7(FUNC20(ctx, "/etc/resolv.conf"));
			break;
		case 't':
			qtype = optarg;
			break;
		case 'v':
			verb++;
			break;
		case 'y':
			FUNC7(FUNC14(ctx, optarg));
			break;
		case 'f':
			FUNC7(FUNC15(ctx, optarg));
			break;
		case 'F':
			FUNC7(FUNC22(ctx, optarg));
			break;
		case '?':
		case 'h':
		default:
			FUNC23();
		}
	}
	if(debuglevel != 0) /* set after possible -C options */
		FUNC7(FUNC18(ctx, debuglevel));
	if(FUNC19(ctx, "use-syslog", &optarg) == 0) {
		if(FUNC13(optarg, "yes") == 0) /* disable use-syslog */
			FUNC7(FUNC21(ctx, 
				"use-syslog:", "no"));
		FUNC10(optarg);
	}
	argc -= optind;
	argv += optind;
	if(argc != 1)
		FUNC23();

#ifdef HAVE_SSL
#ifdef HAVE_ERR_LOAD_CRYPTO_STRINGS
	ERR_load_crypto_strings();
#endif
#if OPENSSL_VERSION_NUMBER < 0x10100000 || !defined(HAVE_OPENSSL_INIT_SSL)
	ERR_load_SSL_strings();
#endif
#if OPENSSL_VERSION_NUMBER < 0x10100000 || !defined(HAVE_OPENSSL_INIT_CRYPTO)
	OpenSSL_add_all_algorithms();
#else
	OPENSSL_init_crypto(OPENSSL_INIT_ADD_ALL_CIPHERS
		| OPENSSL_INIT_ADD_ALL_DIGESTS
		| OPENSSL_INIT_LOAD_CRYPTO_STRINGS, NULL);
#endif
#if OPENSSL_VERSION_NUMBER < 0x10100000 || !defined(HAVE_OPENSSL_INIT_SSL)
	(void)SSL_library_init();
#else
	(void)OPENSSL_init_ssl(OPENSSL_INIT_LOAD_SSL_STRINGS, NULL);
#endif
#endif /* HAVE_SSL */
#ifdef HAVE_NSS
        if(NSS_NoDB_Init(".") != SECSuccess) {
		fprintf(stderr, "could not init NSS\n");
		return 1;
	}
#endif
	FUNC12(ctx, argv[0], qtype, qclass);
	return 0;
}