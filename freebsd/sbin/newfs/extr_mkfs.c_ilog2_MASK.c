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
typedef  int u_int ;
typedef  int /*<<< orphan*/  n ;

/* Variables and functions */
 int CHAR_BIT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 

__attribute__((used)) static int
FUNC1(int val)
{
	u_int n;

	for (n = 0; n < sizeof(n) * CHAR_BIT; n++)
		if (1 << n == val)
			return (n);
	FUNC0(1, "ilog2: %d is not a power of 2\n", val);
}