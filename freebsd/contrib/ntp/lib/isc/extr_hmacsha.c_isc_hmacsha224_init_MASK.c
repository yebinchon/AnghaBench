#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_sha224_t ;
struct TYPE_3__ {unsigned char* key; int /*<<< orphan*/  sha224ctx; } ;
typedef  TYPE_1__ isc_hmacsha224_t ;
typedef  int /*<<< orphan*/  ipad ;

/* Variables and functions */
 int /*<<< orphan*/  IPAD ; 
 int ISC_SHA224_BLOCK_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(isc_hmacsha224_t *ctx, const unsigned char *key,
		    unsigned int len)
{
	unsigned char ipad[ISC_SHA224_BLOCK_LENGTH];
	unsigned int i;

	FUNC4(ctx->key, 0, sizeof(ctx->key));
	if (len > sizeof(ctx->key)) {
		isc_sha224_t sha224ctx;
		FUNC1(&sha224ctx);
		FUNC2(&sha224ctx, key, len);
		FUNC0(ctx->key, &sha224ctx);
	} else
		FUNC3(ctx->key, key, len);

	FUNC1(&ctx->sha224ctx);
	FUNC4(ipad, IPAD, sizeof(ipad));
	for (i = 0; i < ISC_SHA224_BLOCK_LENGTH; i++)
		ipad[i] ^= ctx->key[i];
	FUNC2(&ctx->sha224ctx, ipad, sizeof(ipad));
}