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
 int FUNC0 (char const) ; 

__attribute__((used)) static int
FUNC1(char const *str)
{
	int	n1, n2;

	if ((n1 = FUNC0(str[0])) < 0)
		return (-1);

	if ((n2 = FUNC0(str[1])) < 0)
		return (-1);

	return ((((n1 & 0x0f) << 4) | (n2 & 0x0f)) & 0xff);
}