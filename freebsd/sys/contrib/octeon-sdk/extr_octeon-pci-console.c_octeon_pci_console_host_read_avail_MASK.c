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
typedef  scalar_t__ uint64_t ;
typedef  unsigned int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  buf_size ; 
 int /*<<< orphan*/  console_addr_array ; 
 unsigned int num_consoles ; 
 int FUNC0 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  octeon_pci_console_desc_t ; 
 int /*<<< orphan*/  octeon_pci_console_t ; 
 unsigned int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  output_base_addr ; 
 int /*<<< orphan*/  output_read_index ; 
 int /*<<< orphan*/  output_write_index ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int) ; 

int FUNC5(uint64_t console_desc_addr, unsigned int console_num)
{
    if (!console_desc_addr)
        return -1;

    /* Get global pci console information and look up specific console structure. */
    uint32_t num_consoles = FUNC1(console_desc_addr + FUNC3(octeon_pci_console_desc_t, num_consoles));
//    printf("Num consoles: %d, buf size: %d\n", num_consoles, console_buffer_size);
    if (console_num >= num_consoles)
    {
        FUNC4("ERROR: attempting to read non-existant console: %d\n", console_num);
        return(-1);
    }
    uint64_t console_addr = FUNC2(console_desc_addr + FUNC3(octeon_pci_console_desc_t, console_addr_array) + console_num *8);
    uint32_t console_buffer_size = FUNC1(console_addr + FUNC3(octeon_pci_console_t, buf_size));
//    printf("Console %d is at 0x%llx\n", console_num, (long long)console_addr);

    /* Check to see if any data is available */
    uint32_t rd_idx, wr_idx;
    uint64_t base_addr;

    base_addr = FUNC2(console_addr + FUNC3(octeon_pci_console_t, output_base_addr));
    rd_idx = FUNC1(console_addr + FUNC3(octeon_pci_console_t, output_read_index));
    wr_idx = FUNC1(console_addr + FUNC3(octeon_pci_console_t, output_write_index));

//    printf("Read buffer base: 0x%llx, rd: %d(0x%x), wr: %d(0x%x)\n", (long long)base_addr, rd_idx, rd_idx, wr_idx, wr_idx);
    return FUNC0(console_buffer_size, wr_idx, rd_idx);
}