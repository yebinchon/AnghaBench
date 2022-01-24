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
struct _nv {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct _nv*,int) ; 

const char *
FUNC1(struct _nv *x, int value, int sz)
{
	int v, m;
	const char *s;

	v = 1;
	for (v = 1, m = 1 << (8 * sz); v < m; v *= 2) {
		if ((value & v) == 0)
			continue;
		if ((s = FUNC0(x, value & v)) != NULL) {
			value &= ~v;
			return (s);
		}
	}

	return (NULL);
}