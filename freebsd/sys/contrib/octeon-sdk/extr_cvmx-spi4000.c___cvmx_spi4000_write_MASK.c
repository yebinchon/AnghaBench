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

/* Variables and functions */
 int /*<<< orphan*/  SPI4000_DO_WRITE ; 
 int /*<<< orphan*/  SPI4000_GET_WRITE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SPI4000_WRITE_ADDRESS_HIGH ; 
 int /*<<< orphan*/  SPI4000_WRITE_DATA0 ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC4(int interface, int address, uint32_t data)
{
    int status;
    FUNC3(0, FUNC0(interface), SPI4000_WRITE_ADDRESS_HIGH, 2, 1, address);
    FUNC3(0, FUNC0(interface), SPI4000_WRITE_DATA0, 4, 1, data);

    status = FUNC2(FUNC0(interface), SPI4000_DO_WRITE);
    while ((status == 5) || (status == 0xff))
        status = FUNC2(FUNC0(interface), SPI4000_GET_WRITE_STATUS);

    if (status != 4)
        FUNC1("SPI4000: write failed with status=0x%x\n", status);
}