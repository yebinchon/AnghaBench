
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef unsigned int uint32_t ;


 int buf_size ;
 int console_addr_array ;
 unsigned int num_consoles ;
 int octeon_pci_console_buffer_avail_bytes (unsigned int,unsigned int,unsigned int) ;
 int octeon_pci_console_desc_t ;
 int octeon_pci_console_t ;
 unsigned int octeon_read_mem32 (scalar_t__) ;
 scalar_t__ octeon_read_mem64 (scalar_t__) ;
 scalar_t__ offsetof (int ,int ) ;
 int output_base_addr ;
 int output_read_index ;
 int output_write_index ;
 int printf (char*,unsigned int) ;

int octeon_pci_console_host_read_avail(uint64_t console_desc_addr, unsigned int console_num)
{
    if (!console_desc_addr)
        return -1;


    uint32_t num_consoles = octeon_read_mem32(console_desc_addr + offsetof(octeon_pci_console_desc_t, num_consoles));

    if (console_num >= num_consoles)
    {
        printf("ERROR: attempting to read non-existant console: %d\n", console_num);
        return(-1);
    }
    uint64_t console_addr = octeon_read_mem64(console_desc_addr + offsetof(octeon_pci_console_desc_t, console_addr_array) + console_num *8);
    uint32_t console_buffer_size = octeon_read_mem32(console_addr + offsetof(octeon_pci_console_t, buf_size));



    uint32_t rd_idx, wr_idx;
    uint64_t base_addr;

    base_addr = octeon_read_mem64(console_addr + offsetof(octeon_pci_console_t, output_base_addr));
    rd_idx = octeon_read_mem32(console_addr + offsetof(octeon_pci_console_t, output_read_index));
    wr_idx = octeon_read_mem32(console_addr + offsetof(octeon_pci_console_t, output_write_index));


    return octeon_pci_console_buffer_avail_bytes(console_buffer_size, wr_idx, rd_idx);
}
