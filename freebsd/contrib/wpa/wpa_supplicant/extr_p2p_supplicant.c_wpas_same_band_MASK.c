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
typedef  enum hostapd_hw_mode { ____Placeholder_hostapd_hw_mode } hostapd_hw_mode ;

/* Variables and functions */
 int NUM_HOSTAPD_MODES ; 
 int FUNC0 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(int freq1, int freq2)
{
	enum hostapd_hw_mode mode1, mode2;
	u8 chan1, chan2;

	mode1 = FUNC0(freq1, &chan1);
	mode2 = FUNC0(freq2, &chan2);
	if (mode1 == NUM_HOSTAPD_MODES)
		return 0;
	return mode1 == mode2;
}