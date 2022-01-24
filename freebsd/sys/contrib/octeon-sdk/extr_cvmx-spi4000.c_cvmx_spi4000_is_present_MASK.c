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

/* Variables and functions */
 int /*<<< orphan*/  OCTEON_CN38XX ; 
 int /*<<< orphan*/  OCTEON_CN58XX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SPI4000_WRITE_ADDRESS_HIGH ; 
 int /*<<< orphan*/  SPI4000_WRITE_ADDRESS_LOW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* interface_is_spi4000 ; 

int FUNC3(int interface)
{
    if (!(FUNC0(OCTEON_CN38XX) || FUNC0(OCTEON_CN58XX)))
        return 0;
    // Check for the presence of a SPI4000. If it isn't there,
    // these writes will timeout.
    if (FUNC2(FUNC1(interface), SPI4000_WRITE_ADDRESS_HIGH, 0))
        return 0;
    if (FUNC2(FUNC1(interface), SPI4000_WRITE_ADDRESS_LOW, 0))
        return 0;
    interface_is_spi4000[interface] = 1;
    return 1;
}