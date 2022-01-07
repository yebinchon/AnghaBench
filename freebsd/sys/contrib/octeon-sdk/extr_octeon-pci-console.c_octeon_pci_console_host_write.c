
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef unsigned int uint32_t ;


 int MIN (int,int) ;
 int OCTEON_PCI_ENDIAN_64BIT_SWAP ;
 int buf_size ;
 int console_addr_array ;
 int input_base_addr ;
 int input_read_index ;
 int input_write_index ;
 unsigned int num_consoles ;
 int octeon_pci_console_buffer_free_bytes (unsigned int,unsigned int,unsigned int) ;
 int octeon_pci_console_desc_t ;
 int octeon_pci_console_t ;
 int octeon_pci_write_mem (scalar_t__,char const*,int,int ) ;
 unsigned int octeon_read_mem32 (scalar_t__) ;
 scalar_t__ octeon_read_mem64 (scalar_t__) ;
 int octeon_write_mem32 (scalar_t__,unsigned int) ;
 scalar_t__ offsetof (int ,int ) ;
 int printf (char*,unsigned int) ;

int octeon_pci_console_host_write(uint64_t console_desc_addr, unsigned int console_num, const char * buffer, int write_reqest_size, uint32_t flags)
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

    base_addr = octeon_read_mem64(console_addr + offsetof(octeon_pci_console_t, input_base_addr));
    rd_idx = octeon_read_mem32(console_addr + offsetof(octeon_pci_console_t, input_read_index));
    wr_idx = octeon_read_mem32(console_addr + offsetof(octeon_pci_console_t, input_write_index));


    int bytes_to_write = octeon_pci_console_buffer_free_bytes(console_buffer_size, wr_idx, rd_idx);
    if (bytes_to_write <= 0)
        return bytes_to_write;
    bytes_to_write = MIN(bytes_to_write, write_reqest_size);

    if (wr_idx + bytes_to_write >= console_buffer_size)
        bytes_to_write = console_buffer_size - wr_idx;



    octeon_pci_write_mem(base_addr + wr_idx, buffer, bytes_to_write, OCTEON_PCI_ENDIAN_64BIT_SWAP);
    octeon_write_mem32(console_addr + offsetof(octeon_pci_console_t, input_write_index), (wr_idx + bytes_to_write)%console_buffer_size);

    return bytes_to_write;

}
