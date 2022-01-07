
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CVMX_SYNCIOBDMA ;
 void* cvmx_fpa_alloc (int ) ;
 scalar_t__ cvmx_likely (int ) ;
 void* cvmx_phys_to_ptr (int ) ;
 int cvmx_scratch_read64 (int ) ;

__attribute__((used)) static inline void *cvmx_fpa_async_alloc_finish(uint64_t scr_addr, uint64_t pool)
{
    uint64_t address;

    CVMX_SYNCIOBDMA;

    address = cvmx_scratch_read64(scr_addr);
    if (cvmx_likely(address))
        return cvmx_phys_to_ptr(address);
    else
        return cvmx_fpa_alloc(pool);
}
