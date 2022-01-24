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
typedef  int u_long ;
typedef  int u_char ;

/* Variables and functions */

__attribute__((used)) static u_long
FUNC0(u_char *p, int size)
{
	u_long val;
	int i;

	val = 0;
	for (i = 0; i < size; i++)
		val = (val << 8) | p[i];
	return (val);
}