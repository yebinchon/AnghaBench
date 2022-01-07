
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int cvmx_usbd_state_t ;


 int cvmx_read64_uint32 (int) ;

__attribute__((used)) static inline uint32_t __cvmx_usbd_read_csr32(cvmx_usbd_state_t *usb, uint64_t address)
{
    uint32_t result = cvmx_read64_uint32(address ^ 4);
    return result;
}
