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
typedef  int /*<<< orphan*/  symmetric_key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int const*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(const u8 *clear, const u8 *key, u8 *cypher)
{
	u8 pkey[8], next, tmp;
	int i;
	symmetric_key skey;

	/* Add parity bits to the key */
	next = 0;
	for (i = 0; i < 7; i++) {
		tmp = key[i];
		pkey[i] = (tmp >> i) | next | 1;
		next = tmp << (7 - i);
	}
	pkey[i] = next | 1;

	FUNC2(pkey, 8, 0, &skey);
	FUNC1(clear, cypher, &skey);
	FUNC0(&skey);
	return 0;
}