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
typedef  int /*<<< orphan*/  platform_t ;

/* Variables and functions */
 int /*<<< orphan*/  RSTOUTn_MASK_ARMV7 ; 
 int /*<<< orphan*/  SOFT_RST_OUT_EN_ARMV7 ; 
 int /*<<< orphan*/  SYSTEM_SOFT_RESET_ARMV7 ; 
 int /*<<< orphan*/  SYS_SOFT_RST_ARMV7 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(platform_t plat)
{

	FUNC0(RSTOUTn_MASK_ARMV7, SOFT_RST_OUT_EN_ARMV7);
	FUNC0(SYSTEM_SOFT_RESET_ARMV7, SYS_SOFT_RST_ARMV7);
}