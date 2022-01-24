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
typedef  int u8 ;

/* Variables and functions */

__attribute__((used)) static unsigned int FUNC0(const u8 *val, size_t len)
{
	size_t i;
	unsigned int bits;
	u8 tmp;

	for (i = 0; i < len; i++) {
		if (val[i])
			break;
	}
	if (i == len)
		return 0;

	bits = (len - i - 1) * 8;
	tmp = val[i];
	while (tmp) {
		bits++;
		tmp >>= 1;
	}

	return bits;
}