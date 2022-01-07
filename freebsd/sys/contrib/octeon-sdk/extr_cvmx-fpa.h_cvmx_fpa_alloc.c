
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int CVMX_ADDR_DID (int ) ;
 int CVMX_FPA_QUEX_AVAILABLE (scalar_t__) ;
 int CVMX_FULL_DID (int ,scalar_t__) ;
 int CVMX_OCT_DID_FPA ;
 scalar_t__ cvmx_likely (scalar_t__) ;
 void* cvmx_phys_to_ptr (scalar_t__) ;
 scalar_t__ cvmx_read_csr (int ) ;
 int cvmx_wait (int) ;

__attribute__((used)) static inline void *cvmx_fpa_alloc(uint64_t pool)
{
    uint64_t address;

    for (;;) {
        address = cvmx_read_csr(CVMX_ADDR_DID(CVMX_FULL_DID(CVMX_OCT_DID_FPA,pool)));
        if (cvmx_likely(address)) {
            return cvmx_phys_to_ptr(address);
        } else {

           if (cvmx_read_csr(CVMX_FPA_QUEX_AVAILABLE(pool)) > 0)
               cvmx_wait(50);
           else
               return ((void*)0);
 }
    }
}
