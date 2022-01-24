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
typedef  int /*<<< orphan*/  u16 ;
struct crypto_hash {int dummy; } ;
typedef  int /*<<< orphan*/  hash ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_HASH_ALG_MD5 ; 
 int /*<<< orphan*/  CRYPTO_HASH_ALG_SHA1 ; 
 size_t MD5_MAC_LEN ; 
 size_t TLS_RANDOM_LEN ; 
 scalar_t__ FUNC0 (struct crypto_hash*,int /*<<< orphan*/ *,size_t*) ; 
 struct crypto_hash* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_hash*,int /*<<< orphan*/  const*,size_t) ; 

int FUNC3(u16 tls_version, const u8 *client_random,
				 const u8 *server_random,
				 const u8 *server_params,
				 size_t server_params_len, u8 *hash)
{
	u8 *hpos;
	size_t hlen;
	struct crypto_hash *ctx;

	hpos = hash;

	ctx = FUNC1(CRYPTO_HASH_ALG_MD5, NULL, 0);
	if (ctx == NULL)
		return -1;
	FUNC2(ctx, client_random, TLS_RANDOM_LEN);
	FUNC2(ctx, server_random, TLS_RANDOM_LEN);
	FUNC2(ctx, server_params, server_params_len);
	hlen = MD5_MAC_LEN;
	if (FUNC0(ctx, hash, &hlen) < 0)
		return -1;
	hpos += hlen;

	ctx = FUNC1(CRYPTO_HASH_ALG_SHA1, NULL, 0);
	if (ctx == NULL)
		return -1;
	FUNC2(ctx, client_random, TLS_RANDOM_LEN);
	FUNC2(ctx, server_random, TLS_RANDOM_LEN);
	FUNC2(ctx, server_params, server_params_len);
	hlen = hash + sizeof(hash) - hpos;
	if (FUNC0(ctx, hpos, &hlen) < 0)
		return -1;
	hpos += hlen;
	return hpos - hash;
}