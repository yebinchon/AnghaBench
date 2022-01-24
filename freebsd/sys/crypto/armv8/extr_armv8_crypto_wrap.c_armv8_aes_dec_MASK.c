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
typedef  int /*<<< orphan*/  uint8x16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

__attribute__((used)) static uint8x16_t
FUNC3(int rounds, const uint8x16_t *keysched, const uint8x16_t from)
{
	uint8x16_t tmp;
	int i;

	tmp = from;
	for (i = 0; i < rounds - 1; i += 2) {
		tmp = FUNC0(tmp, keysched[i]);
		tmp = FUNC1(tmp);
		tmp = FUNC0(tmp, keysched[i+1]);
		tmp = FUNC1(tmp);
	}

	tmp = FUNC0(tmp, keysched[rounds - 1]);
	tmp = FUNC1(tmp);
	tmp = FUNC0(tmp, keysched[rounds]);
	tmp = FUNC2(tmp, keysched[rounds + 1]);

	return (tmp);
}