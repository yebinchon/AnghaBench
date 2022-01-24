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
 scalar_t__ Z_OK ; 
 scalar_t__ FUNC1 (void*,size_t*,void*,size_t) ; 

int
FUNC2(void *s_start, void *d_start, size_t s_len, size_t d_len, int n)
{
	size_t dstlen = d_len;

	FUNC0(d_len >= s_len);

	if (FUNC1(d_start, &dstlen, s_start, s_len) != Z_OK)
		return (-1);

	return (0);
}