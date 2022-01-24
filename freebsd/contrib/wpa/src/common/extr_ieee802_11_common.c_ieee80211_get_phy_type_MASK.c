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
typedef  enum phy_type { ____Placeholder_phy_type } phy_type ;

/* Variables and functions */
 int PHY_TYPE_HT ; 
 int PHY_TYPE_VHT ; 
 int FUNC0 (int) ; 

enum phy_type FUNC1(int freq, int ht, int vht)
{
	if (vht)
		return PHY_TYPE_VHT;
	if (ht)
		return PHY_TYPE_HT;

	return FUNC0(freq);
}