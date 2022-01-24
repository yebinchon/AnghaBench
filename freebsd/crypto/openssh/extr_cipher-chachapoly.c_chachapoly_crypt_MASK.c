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
typedef  int u_int ;
typedef  int u_char ;
struct chachapoly_ctx {int /*<<< orphan*/  main_ctx; int /*<<< orphan*/  header_ctx; } ;
typedef  int /*<<< orphan*/  seqbuf ;
typedef  int /*<<< orphan*/  poly_key ;
typedef  int /*<<< orphan*/  expected_tag ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int POLY1305_KEYLEN ; 
 int POLY1305_TAGLEN ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_MAC_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int const*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int const*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int const*,int,int*) ; 
 scalar_t__ FUNC6 (int*,int const*,int) ; 

int
FUNC7(struct chachapoly_ctx *ctx, u_int seqnr, u_char *dest,
    const u_char *src, u_int len, u_int aadlen, u_int authlen, int do_encrypt)
{
	u_char seqbuf[8];
	const u_char one[8] = { 1, 0, 0, 0, 0, 0, 0, 0 }; /* NB little-endian */
	u_char expected_tag[POLY1305_TAGLEN], poly_key[POLY1305_KEYLEN];
	int r = SSH_ERR_INTERNAL_ERROR;

	/*
	 * Run ChaCha20 once to generate the Poly1305 key. The IV is the
	 * packet sequence number.
	 */
	FUNC4(poly_key, 0, sizeof(poly_key));
	FUNC0(seqbuf, seqnr);
	FUNC2(&ctx->main_ctx, seqbuf, NULL);
	FUNC1(&ctx->main_ctx,
	    poly_key, poly_key, sizeof(poly_key));

	/* If decrypting, check tag before anything else */
	if (!do_encrypt) {
		const u_char *tag = src + aadlen + len;

		FUNC5(expected_tag, src, aadlen + len, poly_key);
		if (FUNC6(expected_tag, tag, POLY1305_TAGLEN) != 0) {
			r = SSH_ERR_MAC_INVALID;
			goto out;
		}
	}

	/* Crypt additional data */
	if (aadlen) {
		FUNC2(&ctx->header_ctx, seqbuf, NULL);
		FUNC1(&ctx->header_ctx, src, dest, aadlen);
	}

	/* Set Chacha's block counter to 1 */
	FUNC2(&ctx->main_ctx, seqbuf, one);
	FUNC1(&ctx->main_ctx, src + aadlen,
	    dest + aadlen, len);

	/* If encrypting, calculate and append tag */
	if (do_encrypt) {
		FUNC5(dest + aadlen + len, dest, aadlen + len,
		    poly_key);
	}
	r = 0;
 out:
	FUNC3(expected_tag, sizeof(expected_tag));
	FUNC3(seqbuf, sizeof(seqbuf));
	FUNC3(poly_key, sizeof(poly_key));
	return r;
}