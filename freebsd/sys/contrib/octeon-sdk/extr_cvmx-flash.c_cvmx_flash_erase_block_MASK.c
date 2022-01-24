#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {int vendor; scalar_t__ erase_timeout; TYPE_1__* region; } ;
struct TYPE_3__ {int start_offset; int block_size; } ;

/* Variables and functions */
#define  CFI_CMDSET_AMD_STANDARD 130 
#define  CFI_CMDSET_INTEL_EXTENDED 129 
#define  CFI_CMDSET_INTEL_STANDARD 128 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* flash_info ; 
 int /*<<< orphan*/  flash_lock ; 

int FUNC7(int chip_id, int region, int block)
{
    FUNC5(&flash_lock);
#if DEBUG
    cvmx_dprintf("cvmx-flash: Erasing chip %d, region %d, block %d\n",
           chip_id, region, block);
#endif

    int offset = flash_info[chip_id].region[region].start_offset +
                block * flash_info[chip_id].region[region].block_size;

    switch (flash_info[chip_id].vendor)
    {
        case CFI_CMDSET_AMD_STANDARD:
        {
            /* Send the erase sector command sequence */
            FUNC2(chip_id, 0x00, 0xf0); /* Reset the flash chip */
            FUNC2(chip_id, 0x555, 0xaa);
            FUNC2(chip_id, 0x2aa, 0x55);
            FUNC2(chip_id, 0x555, 0x80);
            FUNC2(chip_id, 0x555, 0xaa);
            FUNC2(chip_id, 0x2aa, 0x55);
            FUNC1(chip_id, offset, 0x30);

            /* Loop checking status */
            uint8_t status = FUNC0(chip_id, offset);
            uint64_t start_cycle = FUNC4();
            while (1)
            {
                /* Read the status and xor it with the old status so we can
                    find toggling bits */
                uint8_t old_status = status;
                status = FUNC0(chip_id, offset);
                uint8_t toggle = status ^ old_status;

                /* Check if the erase in progress bit is toggling */
                if (toggle & (1<<6))
                {
                    /* Check hardware timeout */
                    if (status & (1<<5))
                    {
                        /* Chip has signalled a timeout. Reread the status */
                        old_status = FUNC0(chip_id, offset);
                        status = FUNC0(chip_id, offset);
                        toggle = status ^ old_status;

                        /* Check if the erase in progress bit is toggling */
                        if (toggle & (1<<6))
                        {
                            FUNC3("cvmx-flash: Hardware timeout erasing block\n");
                            FUNC6(&flash_lock);
                            return -1;
                        }
                        else
                            break;  /* Not toggling, erase complete */
                    }
                }
                else
                    break;  /* Not toggling, erase complete */

                if (FUNC4() > start_cycle + flash_info[chip_id].erase_timeout)
                {
                    FUNC3("cvmx-flash: Timeout erasing block\n");
                    FUNC6(&flash_lock);
                    return -1;
                }
            }

            FUNC2(chip_id, 0x00, 0xf0); /* Reset the flash chip */
            FUNC6(&flash_lock);
            return 0;
        }
        case CFI_CMDSET_INTEL_STANDARD:
        case CFI_CMDSET_INTEL_EXTENDED:
        {
            /* Send the erase sector command sequence */
            FUNC2(chip_id, 0x00, 0xff); /* Reset the flash chip */
            FUNC1(chip_id, offset, 0x20);
            FUNC1(chip_id, offset, 0xd0);

            /* Loop checking status */
            uint8_t status = FUNC0(chip_id, offset);
            uint64_t start_cycle = FUNC4();
            while ((status & 0x80) == 0)
            {
                if (FUNC4() > start_cycle + flash_info[chip_id].erase_timeout)
                {
                    FUNC3("cvmx-flash: Timeout erasing block\n");
                    FUNC6(&flash_lock);
                    return -1;
                }
                status = FUNC0(chip_id, offset);
            }

            /* Check the final status */
            if (status & 0x7f)
            {
                FUNC3("cvmx-flash: Hardware failure erasing block\n");
                FUNC6(&flash_lock);
                return -1;
            }

            FUNC2(chip_id, 0x00, 0xff); /* Reset the flash chip */
            FUNC6(&flash_lock);
            return 0;
        }
    }

    FUNC3("cvmx-flash: Unsupported flash vendor\n");
    FUNC6(&flash_lock);
    return -1;
}