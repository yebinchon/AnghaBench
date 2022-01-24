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
typedef  int /*<<< orphan*/  WOLFSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  SSL_FILETYPE_ASN1 ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(void *ssl_ctx, const char *dh_file,
			 const u8 *dh_blob, size_t blob_len)
{
	WOLFSSL_CTX *ctx = ssl_ctx;

	if (!dh_file && !dh_blob)
		return 0;

	if (dh_blob) {
		if (FUNC0(ctx, dh_blob, blob_len,
						SSL_FILETYPE_ASN1) < 0) {
			FUNC2(MSG_INFO,
				   "SSL: global use DH DER blob failed");
			return -1;
		}
		FUNC2(MSG_DEBUG, "SSL: global use DH blob OK");
		return 0;
	}

	if (dh_file) {
		if (FUNC1(ctx, dh_file, SSL_FILETYPE_PEM) <
		    0) {
			FUNC2(MSG_INFO,
				   "SSL: global use DH PEM file failed");
			if (FUNC1(ctx, dh_file,
						      SSL_FILETYPE_ASN1) < 0) {
				FUNC2(MSG_INFO,
					   "SSL: global use DH DER file failed");
				return -1;
			}
		}
		FUNC2(MSG_DEBUG, "SSL: global use DH file OK");
		return 0;
	}

	return 0;
}