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
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 

__attribute__((used)) static int
FUNC1(int64_t v, void *p, int digits)
{
	int64_t	max;
	int	ret;

	max = (((int64_t)1) << (digits * 3)) - 1;
	if (v >= 0  &&  v <= max) {
	    FUNC0(v, (char *)p, digits);
	    ret = 0;
	} else {
	    FUNC0(max, (char *)p, digits);
	    ret = -1;
	}
	return (ret);
}