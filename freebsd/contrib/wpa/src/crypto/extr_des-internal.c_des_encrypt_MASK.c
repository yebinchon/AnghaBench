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
typedef  int u32 ;
typedef  int /*<<< orphan*/  pkey ;
typedef  int /*<<< orphan*/  ek ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 

int FUNC5(const u8 *clear, const u8 *key, u8 *cypher)
{
	u8 pkey[8], next, tmp;
	int i;
	u32 ek[32], work[2];

	/* Add parity bits to the key */
	next = 0;
	for (i = 0; i < 7; i++) {
		tmp = key[i];
		pkey[i] = (tmp >> i) | next | 1;
		next = tmp << (7 - i);
	}
	pkey[i] = next | 1;

	FUNC3(pkey, 0, ek);

	work[0] = FUNC0(clear);
	work[1] = FUNC0(clear + 4);
	FUNC2(work, ek);
	FUNC1(cypher, work[0]);
	FUNC1(cypher + 4, work[1]);

	FUNC4(pkey, 0, sizeof(pkey));
	FUNC4(ek, 0, sizeof(ek));
	return 0;
}