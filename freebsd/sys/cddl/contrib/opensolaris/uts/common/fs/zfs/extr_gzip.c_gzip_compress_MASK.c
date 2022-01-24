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
 int /*<<< orphan*/  FUNC1 (void*,void*,size_t) ; 
 scalar_t__ FUNC2 (void*,size_t*,void*,size_t,int) ; 

size_t
FUNC3(void *s_start, void *d_start, size_t s_len, size_t d_len, int n)
{
	size_t dstlen = d_len;

	FUNC0(d_len <= s_len);

	if (FUNC2(d_start, &dstlen, s_start, s_len, n) != Z_OK) {
		if (d_len != s_len)
			return (s_len);

		FUNC1(s_start, d_start, s_len);
		return (s_len);
	}

	return (dstlen);
}