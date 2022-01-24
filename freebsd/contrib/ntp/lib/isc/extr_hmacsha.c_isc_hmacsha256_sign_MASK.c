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
typedef  int /*<<< orphan*/  opad ;
typedef  int /*<<< orphan*/  newdigest ;
struct TYPE_3__ {unsigned char* key; int /*<<< orphan*/  sha256ctx; } ;
typedef  TYPE_1__ isc_hmacsha256_t ;

/* Variables and functions */
 int ISC_SHA256_BLOCK_LENGTH ; 
 int ISC_SHA256_DIGESTLENGTH ; 
 int /*<<< orphan*/  OPAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 

void
FUNC6(isc_hmacsha256_t *ctx, unsigned char *digest, size_t len) {
	unsigned char opad[ISC_SHA256_BLOCK_LENGTH];
	unsigned char newdigest[ISC_SHA256_DIGESTLENGTH];
	unsigned int i;

	FUNC0(len <= ISC_SHA256_DIGESTLENGTH);
	FUNC1(newdigest, &ctx->sha256ctx);

	FUNC5(opad, OPAD, sizeof(opad));
	for (i = 0; i < ISC_SHA256_BLOCK_LENGTH; i++)
		opad[i] ^= ctx->key[i];

	FUNC2(&ctx->sha256ctx);
	FUNC3(&ctx->sha256ctx, opad, sizeof(opad));
	FUNC3(&ctx->sha256ctx, newdigest, ISC_SHA256_DIGESTLENGTH);
	FUNC1(newdigest, &ctx->sha256ctx);
	FUNC4(digest, newdigest, len);
	FUNC5(newdigest, 0, sizeof(newdigest));
}