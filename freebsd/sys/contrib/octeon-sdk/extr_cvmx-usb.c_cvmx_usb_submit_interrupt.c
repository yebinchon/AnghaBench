
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int cvmx_usb_state_t ;
typedef int cvmx_usb_internal_state_t ;
typedef int cvmx_usb_callback_func_t ;


 int CVMX_USB_INVALID_PARAM ;
 int CVMX_USB_LOG_CALLED () ;
 int CVMX_USB_LOG_PARAM (char*,int) ;
 int CVMX_USB_RETURN (int) ;
 int CVMX_USB_TRANSFER_INTERRUPT ;
 int __cvmx_usb_submit_transaction (int *,int,int ,int ,scalar_t__,int,int ,int ,int ,int *,int ,void*) ;
 scalar_t__ cvmx_unlikely (int) ;

int cvmx_usb_submit_interrupt(cvmx_usb_state_t *state, int pipe_handle,
                              uint64_t buffer, int buffer_length,
                              cvmx_usb_callback_func_t callback,
                              void *user_data)
{
    int submit_handle;
    cvmx_usb_internal_state_t *usb = (cvmx_usb_internal_state_t*)state;

    CVMX_USB_LOG_CALLED();
    CVMX_USB_LOG_PARAM("%p", state);
    CVMX_USB_LOG_PARAM("%d", pipe_handle);
    CVMX_USB_LOG_PARAM("0x%llx", (unsigned long long)buffer);
    CVMX_USB_LOG_PARAM("%d", buffer_length);


    if (cvmx_unlikely(!buffer))
        CVMX_USB_RETURN(CVMX_USB_INVALID_PARAM);
    if (cvmx_unlikely(buffer_length < 0))
        CVMX_USB_RETURN(CVMX_USB_INVALID_PARAM);

    submit_handle = __cvmx_usb_submit_transaction(usb, pipe_handle,
                                         CVMX_USB_TRANSFER_INTERRUPT,
                                         0,
                                         buffer,
                                         buffer_length,
                                         0,
                                         0,
                                         0,
                                         ((void*)0),
                                         callback,
                                         user_data);
    CVMX_USB_RETURN(submit_handle);
}
