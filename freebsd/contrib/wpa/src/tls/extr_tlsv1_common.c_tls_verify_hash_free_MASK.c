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
struct tls_verify_hash {int /*<<< orphan*/ * sha256_cert; int /*<<< orphan*/ * sha256_server; int /*<<< orphan*/ * sha256_client; int /*<<< orphan*/ * sha1_cert; int /*<<< orphan*/ * sha1_server; int /*<<< orphan*/ * sha1_client; int /*<<< orphan*/ * md5_cert; int /*<<< orphan*/ * md5_server; int /*<<< orphan*/ * md5_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(struct tls_verify_hash *verify)
{
	FUNC0(verify->md5_client, NULL, NULL);
	FUNC0(verify->md5_server, NULL, NULL);
	FUNC0(verify->md5_cert, NULL, NULL);
	FUNC0(verify->sha1_client, NULL, NULL);
	FUNC0(verify->sha1_server, NULL, NULL);
	FUNC0(verify->sha1_cert, NULL, NULL);
	verify->md5_client = NULL;
	verify->md5_server = NULL;
	verify->md5_cert = NULL;
	verify->sha1_client = NULL;
	verify->sha1_server = NULL;
	verify->sha1_cert = NULL;
#ifdef CONFIG_TLSV12
	crypto_hash_finish(verify->sha256_client, NULL, NULL);
	crypto_hash_finish(verify->sha256_server, NULL, NULL);
	crypto_hash_finish(verify->sha256_cert, NULL, NULL);
	verify->sha256_client = NULL;
	verify->sha256_server = NULL;
	verify->sha256_cert = NULL;
#endif /* CONFIG_TLSV12 */
}