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
typedef  int int64_t ;

/* Variables and functions */

__attribute__((used)) static int64_t
FUNC0(int64_t v, char *p, int s)
{
	if (s == 0)
		return (v);
	v = FUNC0(v, p+1, s-1);
	*p = "0123456789abcdef"[v & 0xf];
	return (v >> 4);
}