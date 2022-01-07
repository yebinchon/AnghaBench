
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cvmx_usb_transaction_t ;
struct TYPE_3__ {scalar_t__ transaction; } ;
typedef TYPE_1__ cvmx_usb_internal_state_t ;



__attribute__((used)) static inline int __cvmx_usb_get_submit_handle(cvmx_usb_internal_state_t *usb,
                                        cvmx_usb_transaction_t *transaction)
{
    return ((unsigned long)transaction - (unsigned long)usb->transaction) /
            sizeof(*transaction);
}
