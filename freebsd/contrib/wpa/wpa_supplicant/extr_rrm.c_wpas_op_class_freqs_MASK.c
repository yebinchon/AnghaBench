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
struct oper_class_map {scalar_t__ bw; } ;
struct hostapd_hw_modes {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ BW160 ; 
 scalar_t__ BW80 ; 
 scalar_t__ BW80P80 ; 
 int* FUNC1 (struct oper_class_map const*,struct hostapd_hw_modes*,int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int * FUNC2(const struct oper_class_map *op,
				 struct hostapd_hw_modes *mode, int active)
{
	u8 channels_80mhz[] = { 42, 58, 106, 122, 138, 155 };
	u8 channels_160mhz[] = { 50, 114 };

	/*
	 * When adding all channels in the operating class, 80 + 80 MHz
	 * operating classes are like 80 MHz channels because we add all valid
	 * channels anyway.
	 */
	if (op->bw == BW80 || op->bw == BW80P80)
		return FUNC1(op, mode, active, channels_80mhz,
					 FUNC0(channels_80mhz));

	if (op->bw == BW160)
		return FUNC1(op, mode, active, channels_160mhz,
					 FUNC0(channels_160mhz));

	return FUNC1(op, mode, active, NULL, 0);
}