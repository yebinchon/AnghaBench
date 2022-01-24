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
struct tlsv1_credentials {int server_cert_only; int cert_probe; int /*<<< orphan*/  trusted_certs; int /*<<< orphan*/  ca_cert_verify; int /*<<< orphan*/  srv_cert_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC5(struct tlsv1_credentials *cred, const char *cert,
		      const u8 *cert_blob, size_t cert_blob_len,
		      const char *path)
{
	if (cert && FUNC2(cert, "hash://", 7) == 0) {
		const char *pos = cert + 7;
		if (FUNC2(pos, "server/sha256/", 14) != 0) {
			FUNC4(MSG_DEBUG,
				   "TLSv1: Unsupported ca_cert hash value '%s'",
				   cert);
			return -1;
		}
		pos += 14;
		if (FUNC1(pos) != 32 * 2) {
			FUNC4(MSG_DEBUG,
				   "TLSv1: Unexpected SHA256 hash length in ca_cert '%s'",
				   cert);
			return -1;
		}
		if (FUNC0(pos, cred->srv_cert_hash, 32) < 0) {
			FUNC4(MSG_DEBUG,
				   "TLSv1: Invalid SHA256 hash value in ca_cert '%s'",
				   cert);
			return -1;
		}
		cred->server_cert_only = 1;
		cred->ca_cert_verify = 0;
		FUNC4(MSG_DEBUG,
			   "TLSv1: Checking only server certificate match");
		return 0;
	}

	if (cert && FUNC2(cert, "probe://", 8) == 0) {
		cred->cert_probe = 1;
		cred->ca_cert_verify = 0;
		FUNC4(MSG_DEBUG, "TLSv1: Only probe server certificate");
		return 0;
	}

	cred->ca_cert_verify = cert || cert_blob || path;

	if (FUNC3(&cred->trusted_certs, cert,
				 cert_blob, cert_blob_len) < 0)
		return -1;

	if (path) {
		/* TODO: add support for reading number of certificate files */
		FUNC4(MSG_INFO, "TLSv1: Use of CA certificate directory "
			   "not yet supported");
		return -1;
	}

	return 0;
}