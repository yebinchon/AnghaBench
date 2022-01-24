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
typedef  int /*<<< orphan*/  u8 ;
struct tls_connection {int /*<<< orphan*/  ssl; } ;
typedef  int /*<<< orphan*/  WOLFSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  SSL_FILETYPE_ASN1 ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/ * tls_passwd_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(void *tls_ctx,
				      struct tls_connection *conn,
				      const char *private_key,
				      const char *private_key_passwd,
				      const u8 *private_key_blob,
				      size_t blob_len)
{
	WOLFSSL_CTX *ctx = tls_ctx;
	char *passwd = NULL;
	int ok = 0;

	if (!private_key && !private_key_blob)
		return 0;

	if (private_key_passwd) {
		passwd = FUNC1(private_key_passwd);
		if (!passwd)
			return -1;
	}

	FUNC2(ctx, tls_passwd_cb);
	FUNC3(ctx, passwd);

	if (private_key_blob) {
		if (FUNC4(conn->ssl,
						  private_key_blob, blob_len,
						  SSL_FILETYPE_ASN1) < 0) {
			FUNC6(MSG_INFO,
				   "SSL: use private DER blob failed");
		} else {
			FUNC6(MSG_DEBUG, "SSL: use private key blob OK");
			ok = 1;
		}
	}

	if (!ok && private_key) {
		if (FUNC5(conn->ssl, private_key,
						SSL_FILETYPE_PEM) < 0) {
			FUNC6(MSG_INFO,
				   "SSL: use private key PEM file failed");
			if (FUNC5(conn->ssl, private_key,
							SSL_FILETYPE_ASN1) < 0)
			{
				FUNC6(MSG_INFO,
					   "SSL: use private key DER file failed");
			} else {
				ok = 1;
			}
		} else {
			ok = 1;
		}

		if (ok)
			FUNC6(MSG_DEBUG, "SSL: use private key file OK");
	}

	FUNC2(ctx, NULL);
	FUNC0(passwd);

	if (!ok)
		return -1;

	return 0;
}