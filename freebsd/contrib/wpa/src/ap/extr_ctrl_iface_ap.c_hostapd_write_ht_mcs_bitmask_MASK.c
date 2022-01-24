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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int FUNC0 (char*,size_t,char*) ; 
 scalar_t__ FUNC1 (size_t,int) ; 
 scalar_t__ FUNC2 (char*,size_t,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static size_t FUNC3(char *buf, size_t buflen,
					   size_t curr_len, const u8 *mcs_set)
{
	int ret;
	size_t len = curr_len;

	ret = FUNC0(buf + len, buflen - len,
			  "ht_mcs_bitmask=");
	if (FUNC1(buflen - len, ret))
		return len;
	len += ret;

	/* 77 first bits (+ 3 reserved bits) */
	len += FUNC2(buf + len, buflen - len, mcs_set, 10);

	ret = FUNC0(buf + len, buflen - len, "\n");
	if (FUNC1(buflen - len, ret))
		return curr_len;
	len += ret;

	return len;
}