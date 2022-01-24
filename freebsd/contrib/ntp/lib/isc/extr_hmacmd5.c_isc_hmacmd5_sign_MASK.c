#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opad ;
struct TYPE_4__ {unsigned char* key; int /*<<< orphan*/  md5ctx; } ;
typedef  TYPE_1__ isc_hmacmd5_t ;

/* Variables and functions */
 int ISC_MD5_DIGESTLENGTH ; 
 int /*<<< orphan*/  OPAD ; 
 int PADLEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(isc_hmacmd5_t *ctx, unsigned char *digest) {
	unsigned char opad[PADLEN];
	int i;

	FUNC1(&ctx->md5ctx, digest);

	FUNC4(opad, OPAD, sizeof(opad));
	for (i = 0; i < PADLEN; i++)
		opad[i] ^= ctx->key[i];

	FUNC2(&ctx->md5ctx);
	FUNC3(&ctx->md5ctx, opad, sizeof(opad));
	FUNC3(&ctx->md5ctx, digest, ISC_MD5_DIGESTLENGTH);
	FUNC1(&ctx->md5ctx, digest);
	FUNC0(ctx);
}