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

__attribute__((used)) static const char *FUNC0(uint8_t vl_num)
{
	switch (vl_num) {
	case 1:  return "1";
	case 2:  return "2";
	case 3:  return "4";
	case 4:  return "8";
	case 5:  return "15";
	default: return "invalid value";
	}
}