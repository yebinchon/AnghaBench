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
typedef  int uint8_t ;

/* Variables and functions */

__attribute__((used)) static inline int FUNC0(uint8_t tom)
{
	if (tom > 0) {
		if (tom >= 0x7 && tom <= 0xe)
			return 0;
		if (tom == 0x10)
			return 0;
		if (tom > 0x14)
			return 0;
		return 1;
	} else
		return 0;
}