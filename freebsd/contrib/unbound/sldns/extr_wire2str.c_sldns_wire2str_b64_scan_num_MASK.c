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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,char*,size_t) ; 
 int FUNC1 (size_t) ; 

__attribute__((used)) static int FUNC2(uint8_t** d, size_t* dl, char** s,
	size_t* sl, size_t num)
{
	/* b64_ntop_calculate size includes null at the end */
	size_t sz = FUNC1(num)-1;
	if(*sl < sz+1) {
		(*d) += num;
		(*dl) -= num;
		return (int)sz; /* out of space really, but would need buffer
			in order to truncate the output */
	}
	FUNC0(*d, num, *s, *sl);
	(*d) += num;
	(*dl) -= num;
	(*s) += sz;
	(*sl) -= sz;
	return (int)sz;
}