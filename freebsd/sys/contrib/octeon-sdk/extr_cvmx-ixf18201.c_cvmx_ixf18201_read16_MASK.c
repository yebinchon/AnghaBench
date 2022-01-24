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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  IXF_ADDR_16 ; 
 int /*<<< orphan*/  IXF_RD_DATA_16 ; 
 int /*<<< orphan*/  IXF_TRANS_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

uint16_t FUNC4(uint16_t reg_addr)
{
    FUNC2(IXF_ADDR_16, reg_addr);
    FUNC3(IXF_TRANS_TYPE, 1);  // Do read
    FUNC1(800000);

    /* Read result */
    return(FUNC0(IXF_RD_DATA_16));
}