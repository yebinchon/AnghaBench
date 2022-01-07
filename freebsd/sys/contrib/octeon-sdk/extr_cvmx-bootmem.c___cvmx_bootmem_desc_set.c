
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int cvmx_write64_uint32 (int,int) ;
 int cvmx_write64_uint64 (int,int) ;

__attribute__((used)) static inline void __cvmx_bootmem_desc_set(uint64_t base, int offset, int size, uint64_t value)
{
    base = (1ull << 63) | (base + offset);
    switch (size)
    {
        case 4:
            cvmx_write64_uint32(base, value);
            break;
        case 8:
            cvmx_write64_uint64(base, value);
            break;
        default:
            break;
    }
}
