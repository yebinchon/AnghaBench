
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int init_flags; } ;
typedef TYPE_1__ cvmx_usb_internal_state_t ;


 int CVMX_USB_INITIALIZE_FLAGS_DEBUG_CSRS ;
 int cvmx_csr_db_decode (int ,int,int ) ;
 int cvmx_dprintf (char*) ;
 int cvmx_get_proc_id () ;
 int cvmx_read64_uint32 (int) ;
 scalar_t__ cvmx_unlikely (int) ;

__attribute__((used)) static inline uint32_t __cvmx_usb_read_csr32(cvmx_usb_internal_state_t *usb,
                                             uint64_t address)
{
    uint32_t result = cvmx_read64_uint32(address ^ 4);







    return result;
}
