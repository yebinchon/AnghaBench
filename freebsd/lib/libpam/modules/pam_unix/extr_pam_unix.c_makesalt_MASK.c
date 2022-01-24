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

/* Variables and functions */
 int SALTSIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(char salt[SALTSIZE + 1])
{
	int i;

	/* These are not really random numbers, they are just
	 * numbers that change to thwart construction of a
	 * dictionary.
	 */
	for (i = 0; i < SALTSIZE; i += 4)
		FUNC1(&salt[i], FUNC0(), 4);
	salt[SALTSIZE] = '\0';
}