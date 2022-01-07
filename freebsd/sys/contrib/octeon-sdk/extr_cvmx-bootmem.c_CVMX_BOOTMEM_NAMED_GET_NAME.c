
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 int cvmx_bootmem_named_block_desc_t ;
 int cvmx_read64_uint8 (int ) ;
 int name ;
 scalar_t__ offsetof (int ,int ) ;

__attribute__((used)) static void CVMX_BOOTMEM_NAMED_GET_NAME(uint64_t addr, char *str, int len)
{

    int l = len;
    char *ptr = str;
    addr |= (1ull << 63);
    addr += offsetof(cvmx_bootmem_named_block_desc_t, name);
    while (l--)
        *ptr++ = cvmx_read64_uint8(addr++);
    str[len] = 0;






}
