
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int cvmx_read64_uint32 (int) ;
 int cvmx_read64_uint64 (int) ;

__attribute__((used)) static inline uint64_t __cvmx_bootmem_desc_get(uint64_t base, int offset, int size)
{
    base = (1ull << 63) | (base + offset);
    switch (size)
    {
        case 4:
            return cvmx_read64_uint32(base);
        case 8:
            return cvmx_read64_uint64(base);
        default:
            return 0;
    }
}
