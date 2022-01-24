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
typedef  int /*<<< orphan*/  newdigest ;
struct TYPE_4__ {unsigned char* key; int /*<<< orphan*/  sha1ctx; } ;
typedef  TYPE_1__ isc_hmacsha1_t ;

/* Variables and functions */
 int ISC_SHA1_BLOCK_LENGTH ; 
 int ISC_SHA1_DIGESTLENGTH ; 
 int /*<<< orphan*/  OPAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,int) ; 

void
FUNC7(isc_hmacsha1_t *ctx, unsigned char *digest, size_t len) {
	unsigned char opad[ISC_SHA1_BLOCK_LENGTH];
	unsigned char newdigest[ISC_SHA1_DIGESTLENGTH];
	unsigned int i;

	FUNC0(len <= ISC_SHA1_DIGESTLENGTH);
	FUNC2(&ctx->sha1ctx, newdigest);

	FUNC6(opad, OPAD, sizeof(opad));
	for (i = 0; i < ISC_SHA1_BLOCK_LENGTH; i++)
		opad[i] ^= ctx->key[i];

	FUNC3(&ctx->sha1ctx);
	FUNC4(&ctx->sha1ctx, opad, sizeof(opad));
	FUNC4(&ctx->sha1ctx, newdigest, ISC_SHA1_DIGESTLENGTH);
	FUNC2(&ctx->sha1ctx, newdigest);
	FUNC1(ctx);
	FUNC5(digest, newdigest, len);
	FUNC6(newdigest, 0, sizeof(newdigest));
}