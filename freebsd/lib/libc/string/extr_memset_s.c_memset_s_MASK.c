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
typedef  scalar_t__ rsize_t ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ RSIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 

errno_t
FUNC1(void *s, rsize_t smax, int c, rsize_t n)
{
	errno_t ret;
	rsize_t lim;
	unsigned char v;
	volatile unsigned char *dst;

	ret = EINVAL;
	lim = n < smax ? n : smax;
	v = (unsigned char)c;
	dst = (unsigned char *)s;
	if (s == NULL) {
		FUNC0("memset_s : s is NULL", ret);
	} else if (smax > RSIZE_MAX) {
		FUNC0("memset_s : smax > RSIZE_MAX",
		    ret);
	} else if (n > RSIZE_MAX) {
		FUNC0("memset_s : n > RSIZE_MAX", ret);
	} else {
		while (lim > 0)
			dst[--lim] = v;
		if (n > smax) {
			FUNC0("memset_s : n > smax",
			    ret);
		} else {
			ret = 0;
		}
	}
	return (ret);
}