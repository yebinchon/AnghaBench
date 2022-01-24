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
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  OCTEON_PCI_ENDIAN_64BIT_SWAP ; 
 int console_addr_array ; 
 unsigned int num_consoles ; 
 int FUNC1 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  octeon_pci_console_desc_t ; 
 int /*<<< orphan*/  octeon_pci_console_t ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int output_base_addr ; 
 int output_read_index ; 
 int output_write_index ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int) ; 

int FUNC8(uint64_t console_desc_addr, unsigned int console_num, char * buffer, int buf_size, uint32_t flags)
{
    if (!console_desc_addr)
        return -1;

    /* Get global pci console information and look up specific console structure. */
    uint32_t num_consoles = FUNC3(console_desc_addr + FUNC6(octeon_pci_console_desc_t, num_consoles));
//    printf("Num consoles: %d, buf size: %d\n", num_consoles, console_buffer_size);
    if (console_num >= num_consoles)
    {
        FUNC7("ERROR: attempting to read non-existant console: %d\n", console_num);
        return(-1);
    }
    uint64_t console_addr = FUNC4(console_desc_addr + FUNC6(octeon_pci_console_desc_t, console_addr_array) + console_num *8);
    uint32_t console_buffer_size = FUNC3(console_addr + FUNC6(octeon_pci_console_t, buf_size));
//    printf("Console %d is at 0x%llx\n", console_num, (long long)console_addr);

    /* Check to see if any data is available */
    uint32_t rd_idx, wr_idx;
    uint64_t base_addr;

    base_addr = FUNC4(console_addr + FUNC6(octeon_pci_console_t, output_base_addr));
    rd_idx = FUNC3(console_addr + FUNC6(octeon_pci_console_t, output_read_index));
    wr_idx = FUNC3(console_addr + FUNC6(octeon_pci_console_t, output_write_index));

//    printf("Read buffer base: 0x%llx, rd: %d(0x%x), wr: %d(0x%x)\n", (long long)base_addr, rd_idx, rd_idx, wr_idx, wr_idx);
    int bytes_to_read = FUNC1(console_buffer_size, wr_idx, rd_idx);
    if (bytes_to_read <= 0)
        return bytes_to_read;


    bytes_to_read = FUNC0(bytes_to_read, buf_size);
    /* Check to see if what we want to read is not contiguous, and limit ourselves to the contiguous block*/
    if (rd_idx + bytes_to_read >= console_buffer_size)
        bytes_to_read = console_buffer_size - rd_idx;


    FUNC2(buffer, base_addr + rd_idx, bytes_to_read,OCTEON_PCI_ENDIAN_64BIT_SWAP);
    FUNC5(console_addr + FUNC6(octeon_pci_console_t, output_read_index), (rd_idx + bytes_to_read)%console_buffer_size);

    return bytes_to_read;
}