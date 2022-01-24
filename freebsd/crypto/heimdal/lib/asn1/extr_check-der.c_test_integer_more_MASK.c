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
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int
FUNC1 (void)
{
    int i, n1, n2, n3, n4, n5, n6;

    n2 = 0;
    for (i = 0; i < (sizeof(int) * 8); i++) {
	n1 = 0x01 << i;
	n2 = n2 | n1;
	n3 = ~n1;
	n4 = ~n2;
	n5 = (-1) & ~(0x3f << i);
	n6 = (-1) & ~(0x7f << i);

	FUNC0(n1);
	FUNC0(n2);
	FUNC0(n3);
	FUNC0(n4);
	FUNC0(n5);
	FUNC0(n6);
    }
    return 0;
}