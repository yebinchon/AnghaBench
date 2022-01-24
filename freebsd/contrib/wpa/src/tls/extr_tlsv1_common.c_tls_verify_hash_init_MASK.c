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
 int /*<<< orphan*/  CRYPTO_HASH_ALG_MD5 ; 
 int /*<<< orphan*/  CRYPTO_HASH_ALG_SHA1 ; 
 int /*<<< orphan*/  CRYPTO_HASH_ALG_SHA256 ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tls_verify_hash*) ; 

int FUNC2(struct tls_verify_hash *verify)
{
	FUNC1(verify);
	verify->md5_client = FUNC0(CRYPTO_HASH_ALG_MD5, NULL, 0);
	verify->md5_server = FUNC0(CRYPTO_HASH_ALG_MD5, NULL, 0);
	verify->md5_cert = FUNC0(CRYPTO_HASH_ALG_MD5, NULL, 0);
	verify->sha1_client = FUNC0(CRYPTO_HASH_ALG_SHA1, NULL, 0);
	verify->sha1_server = FUNC0(CRYPTO_HASH_ALG_SHA1, NULL, 0);
	verify->sha1_cert = FUNC0(CRYPTO_HASH_ALG_SHA1, NULL, 0);
	if (verify->md5_client == NULL || verify->md5_server == NULL ||
	    verify->md5_cert == NULL || verify->sha1_client == NULL ||
	    verify->sha1_server == NULL || verify->sha1_cert == NULL) {
		FUNC1(verify);
		return -1;
	}
#ifdef CONFIG_TLSV12
	verify->sha256_client = crypto_hash_init(CRYPTO_HASH_ALG_SHA256, NULL,
						 0);
	verify->sha256_server = crypto_hash_init(CRYPTO_HASH_ALG_SHA256, NULL,
						 0);
	verify->sha256_cert = crypto_hash_init(CRYPTO_HASH_ALG_SHA256, NULL,
					       0);
	if (verify->sha256_client == NULL || verify->sha256_server == NULL ||
	    verify->sha256_cert == NULL) {
		tls_verify_hash_free(verify);
		return -1;
	}
#endif /* CONFIG_TLSV12 */
	return 0;
}