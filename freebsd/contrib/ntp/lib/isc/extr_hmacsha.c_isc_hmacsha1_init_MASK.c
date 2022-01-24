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
typedef  int /*<<< orphan*/  isc_sha1_t ;
struct TYPE_3__ {unsigned char* key; int /*<<< orphan*/  sha1ctx; } ;
typedef  TYPE_1__ isc_hmacsha1_t ;
typedef  int /*<<< orphan*/  ipad ;

/* Variables and functions */
 int /*<<< orphan*/  IPAD ; 
 int ISC_SHA1_BLOCK_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(isc_hmacsha1_t *ctx, const unsigned char *key,
		  unsigned int len)
{
	unsigned char ipad[ISC_SHA1_BLOCK_LENGTH];
	unsigned int i;

	FUNC4(ctx->key, 0, sizeof(ctx->key));
	if (len > sizeof(ctx->key)) {
		isc_sha1_t sha1ctx;
		FUNC1(&sha1ctx);
		FUNC2(&sha1ctx, key, len);
		FUNC0(&sha1ctx, ctx->key);
	} else
		FUNC3(ctx->key, key, len);

	FUNC1(&ctx->sha1ctx);
	FUNC4(ipad, IPAD, sizeof(ipad));
	for (i = 0; i < ISC_SHA1_BLOCK_LENGTH; i++)
		ipad[i] ^= ctx->key[i];
	FUNC2(&ctx->sha1ctx, ipad, sizeof(ipad));
}