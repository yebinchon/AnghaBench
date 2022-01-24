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
struct tls_data {int /*<<< orphan*/ * ssl; } ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  DSA ;
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC11(struct tls_data *data, const char *dh_file)
{
#ifdef OPENSSL_NO_DH
	if (dh_file == NULL)
		return 0;
	wpa_printf(MSG_ERROR, "TLS: openssl does not include DH support, but "
		   "dh_file specified");
	return -1;
#else /* OPENSSL_NO_DH */
	SSL_CTX *ssl_ctx = data->ssl;
	DH *dh;
	BIO *bio;

	/* TODO: add support for dh_blob */
	if (dh_file == NULL)
		return 0;
	if (ssl_ctx == NULL)
		return -1;

	bio = FUNC1(dh_file, "r");
	if (bio == NULL) {
		FUNC10(MSG_INFO, "TLS: Failed to open DH file '%s': %s",
			   dh_file, FUNC5(FUNC6(), NULL));
		return -1;
	}
	dh = FUNC7(bio, NULL, NULL, NULL);
	FUNC0(bio);
#ifndef OPENSSL_NO_DSA
	while (dh == NULL) {
		DSA *dsa;
		FUNC10(MSG_DEBUG, "TLS: Failed to parse DH file '%s': %s -"
			   " trying to parse as DSA params", dh_file,
			   FUNC5(FUNC6(), NULL));
		bio = FUNC1(dh_file, "r");
		if (bio == NULL)
			break;
		dsa = FUNC8(bio, NULL, NULL, NULL);
		FUNC0(bio);
		if (!dsa) {
			FUNC10(MSG_DEBUG, "TLS: Failed to parse DSA file "
				   "'%s': %s", dh_file,
				   FUNC5(FUNC6(), NULL));
			break;
		}

		FUNC10(MSG_DEBUG, "TLS: DH file in DSA param format");
		dh = FUNC3(dsa);
		FUNC4(dsa);
		if (dh == NULL) {
			FUNC10(MSG_INFO, "TLS: Failed to convert DSA "
				   "params into DH params");
			break;
		}
		break;
	}
#endif /* !OPENSSL_NO_DSA */
	if (dh == NULL) {
		FUNC10(MSG_INFO, "TLS: Failed to read/parse DH/DSA file "
			   "'%s'", dh_file);
		return -1;
	}

	if (FUNC9(ssl_ctx, dh) != 1) {
		FUNC10(MSG_INFO, "TLS: Failed to set DH params from '%s': "
			   "%s", dh_file,
			   FUNC5(FUNC6(), NULL));
		FUNC2(dh);
		return -1;
	}
	FUNC2(dh);
	return 0;
#endif /* OPENSSL_NO_DH */
}