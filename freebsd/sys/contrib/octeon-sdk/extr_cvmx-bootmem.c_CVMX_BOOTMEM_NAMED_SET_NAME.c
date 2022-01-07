
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 int cvmx_bootmem_named_block_desc_t ;
 int cvmx_write64_uint8 (int ,int ) ;
 int name ;
 unsigned long long offsetof (int ,int ) ;

__attribute__((used)) static void CVMX_BOOTMEM_NAMED_SET_NAME(uint64_t addr, const char *str, int len)
{

    int l = len;
    addr |= (1ull << 63);
    addr += offsetof(cvmx_bootmem_named_block_desc_t, name);
    while (l--)
    {
        if (l)
            cvmx_write64_uint8(addr++, *str++);
        else
            cvmx_write64_uint8(addr++, 0);
    }







}
