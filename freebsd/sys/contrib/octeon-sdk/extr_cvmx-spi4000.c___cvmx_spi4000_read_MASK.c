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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SPI4000_DO_READ ; 
 int /*<<< orphan*/  SPI4000_GET_READ_STATUS ; 
 int /*<<< orphan*/  SPI4000_READ_ADDRESS_HIGH ; 
 int /*<<< orphan*/  SPI4000_READ_DATA0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static uint32_t FUNC5(int interface, int address)
{
    int status;
    uint64_t data;

    FUNC4(0, FUNC0(interface), SPI4000_READ_ADDRESS_HIGH, 2, 1, address);

    status = FUNC2(FUNC0(interface), SPI4000_DO_READ);
    while ((status == 1) || (status == 0xff))
        status = FUNC2(FUNC0(interface), SPI4000_GET_READ_STATUS);

    if (status)
    {
        FUNC1("SPI4000: read failed with %d\n", status);
        return 0;
    }

    status = FUNC3(0, FUNC0(interface), SPI4000_READ_DATA0, 4, 1, &data);
    if (status != 4)
    {
        FUNC1("SPI4000: read failed with %d\n", status);
        return 0;
    }

    return data;
}