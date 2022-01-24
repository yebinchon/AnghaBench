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
typedef  int uint32_t ;
typedef  int u_int ;
struct a10codec_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct a10codec_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct a10codec_info*,int /*<<< orphan*/ ,int) ; 
 int H3_ACDA_PR_WDAT_MASK ; 
 int H3_ACDA_PR_WDAT_SHIFT ; 
 int H3_AC_PR_ADDR_MASK ; 
 int H3_AC_PR_ADDR_SHIFT ; 
 int H3_AC_PR_RST ; 
 int H3_AC_PR_RW ; 
 int /*<<< orphan*/  H3_PR_CFG ; 

__attribute__((used)) static void
FUNC2(struct a10codec_info *sc, u_int addr, u_int data)
{
	uint32_t val;

	/* Read current value */
	val = FUNC0(sc, H3_PR_CFG);

	/* De-assert reset */
	val |= H3_AC_PR_RST;
	FUNC1(sc, H3_PR_CFG, val);

	/* Set address */
	val &= ~H3_AC_PR_ADDR_MASK;
	val |= (addr << H3_AC_PR_ADDR_SHIFT);
	FUNC1(sc, H3_PR_CFG, val);

	/* Write data */
	val &= ~H3_ACDA_PR_WDAT_MASK;
	val |= (data << H3_ACDA_PR_WDAT_SHIFT);
	FUNC1(sc, H3_PR_CFG, val);

	/* Write mode */
	val |= H3_AC_PR_RW;
	FUNC1(sc, H3_PR_CFG, val);
}