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

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  SSL_FILETYPE_ASN1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct tls_connection *conn,
				      const char *client_cert,
				      const u8 *client_cert_blob,
				      size_t blob_len)
{
	if (!client_cert && !client_cert_blob)
		return 0;

	if (client_cert_blob) {
		if (FUNC0(
			    conn->ssl, client_cert_blob, blob_len,
			    SSL_FILETYPE_ASN1) < 0) {
			FUNC3(MSG_INFO,
				   "SSL: use client cert DER blob failed");
			return -1;
		}
		FUNC3(MSG_DEBUG, "SSL: use client cert blob OK");
		return 0;
	}

	if (client_cert) {
		if (FUNC1(conn->ssl,
						       client_cert) < 0) {
			FUNC3(MSG_INFO,
				   "SSL: use client cert PEM file failed");
			if (FUNC2(
				    conn->ssl, client_cert,
				    SSL_FILETYPE_ASN1) < 0) {
				FUNC3(MSG_INFO,
					   "SSL: use client cert DER file failed");
				return -1;
			}
		}
		FUNC3(MSG_DEBUG, "SSL: use client cert file OK");
		return 0;
	}

	return 0;
}