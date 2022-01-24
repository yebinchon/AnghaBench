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
typedef  int u8 ;
struct des_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  ctx ;

/* Variables and functions */
 int /*<<< orphan*/  DES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct des_ctx*,int /*<<< orphan*/ ,int*,int const*) ; 
 int /*<<< orphan*/  FUNC1 (struct des_ctx*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct des_ctx*,int /*<<< orphan*/ ,int) ; 

int FUNC3(const u8 *clear, const u8 *key, u8 *cypher)
{
	struct des_ctx ctx;
	u8 pkey[8], next, tmp;
	int i;

	/* Add parity bits to the key */
	next = 0;
	for (i = 0; i < 7; i++) {
		tmp = key[i];
		pkey[i] = (tmp >> i) | next | 1;
		next = tmp << (7 - i);
	}
	pkey[i] = next | 1;

	FUNC1(&ctx, pkey);
	FUNC0(&ctx, DES_BLOCK_SIZE, cypher, clear);
	FUNC2(&ctx, 0, sizeof(ctx));
	return 0;
}