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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int MAXKEYS ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cmp_keys ; 
 scalar_t__* keys ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,size_t,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(size_t len)
{
	uint32_t sorted_keys[MAXKEYS];
	size_t i;

	FUNC1(len <= MAXKEYS);

	if (len == 0)
		return;

	do {
		for (i = 0; i < len; ++i)
			sorted_keys[i] = keys[i] = FUNC0();

		FUNC2(sorted_keys, len, sizeof(*sorted_keys), cmp_keys);
		for (i = 1; i < len; ++i) {
			if (sorted_keys[i - 1] == sorted_keys[i])
				break;
		}
	} while (i != len);
}