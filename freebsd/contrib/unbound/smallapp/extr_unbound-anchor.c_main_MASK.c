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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int HTTPS_PORT ; 
 int OPENSSL_INIT_ADD_ALL_CIPHERS ; 
 int OPENSSL_INIT_ADD_ALL_DIGESTS ; 
 int OPENSSL_INIT_LOAD_CRYPTO_STRINGS ; 
 int /*<<< orphan*/  OPENSSL_INIT_LOAD_SSL_STRINGS ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* P7SIGNER ; 
 char* P7SNAME ; 
 char* ROOT_ANCHOR_FILE ; 
 char* ROOT_CERT_FILE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* URLNAME ; 
 char* XMLNAME ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (char const*,char const*,char const*,char const*,char const*,char const*,char const*,char const*,char const*,int,int,int,int,int) ; 
 int FUNC9 (int,char**,char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  verb ; 

int FUNC11(int argc, char* argv[])
{
	int c;
	const char* root_anchor_file = ROOT_ANCHOR_FILE;
	const char* root_cert_file = ROOT_CERT_FILE;
	const char* urlname = URLNAME;
	const char* xmlname = XMLNAME;
	const char* p7sname = P7SNAME;
	const char* p7signer = P7SIGNER;
	const char* res_conf = NULL;
	const char* root_hints = NULL;
	const char* debugconf = NULL;
	int dolist=0, ip4only=0, ip6only=0, force=0, port = HTTPS_PORT;
	int res_conf_fallback = 0;
	/* parse the options */
	while( (c=FUNC9(argc, argv, "46C:FRP:a:c:f:hln:r:s:u:vx:")) != -1) {
		switch(c) {
		case 'l':
			dolist = 1;
			break;
		case '4':
			ip4only = 1;
			break;
		case '6':
			ip6only = 1;
			break;
		case 'a':
			root_anchor_file = optarg;
			break;
		case 'c':
			root_cert_file = optarg;
			break;
		case 'u':
			urlname = optarg;
			break;
		case 'x':
			xmlname = optarg;
			break;
		case 's':
			p7sname = optarg;
			break;
		case 'n':
			p7signer = optarg;
			break;
		case 'f':
			res_conf = optarg;
			break;
		case 'r':
			root_hints = optarg;
			break;
		case 'R':
			res_conf_fallback = 1;
			break;
		case 'C':
			debugconf = optarg;
			break;
		case 'F':
			force = 1;
			break;
		case 'P':
			port = FUNC6(optarg);
			break;
		case 'v':
			verb++;
			break;
		case '?':
		case 'h':
		default:
			FUNC10();
		}
	}
	argc -= optind;
	/* argv += optind; not using further arguments */
	if(argc != 0)
		FUNC10();

#ifdef HAVE_ERR_LOAD_CRYPTO_STRINGS
	ERR_load_crypto_strings();
#endif
#if OPENSSL_VERSION_NUMBER < 0x10100000 || !defined(HAVE_OPENSSL_INIT_SSL)
	FUNC0();
#endif
#if OPENSSL_VERSION_NUMBER < 0x10100000 || !defined(HAVE_OPENSSL_INIT_CRYPTO)
	FUNC4();
#else
	OPENSSL_init_crypto(OPENSSL_INIT_ADD_ALL_CIPHERS
		| OPENSSL_INIT_ADD_ALL_DIGESTS
		| OPENSSL_INIT_LOAD_CRYPTO_STRINGS, NULL);
#endif
#if OPENSSL_VERSION_NUMBER < 0x10100000 || !defined(HAVE_OPENSSL_INIT_SSL)
	(void)FUNC5();
#else
	(void)OPENSSL_init_ssl(OPENSSL_INIT_LOAD_SSL_STRINGS, NULL);
#endif

	if(dolist) FUNC7();

	return FUNC8(root_anchor_file, root_cert_file, urlname,
		xmlname, p7sname, p7signer, res_conf, root_hints, debugconf,
		ip4only, ip6only, force, res_conf_fallback, port);
}