#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  cvmx_usb_state_t ;
typedef  int /*<<< orphan*/  cvmx_usb_internal_state_t ;
typedef  int /*<<< orphan*/  cvmx_usb_callback_func_t ;

/* Variables and functions */
 int CVMX_USB_INVALID_PARAM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  CVMX_USB_TRANSFER_INTERRUPT ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(cvmx_usb_state_t *state, int pipe_handle,
                              uint64_t buffer, int buffer_length,
                              cvmx_usb_callback_func_t callback,
                              void *user_data)
{
    int submit_handle;
    cvmx_usb_internal_state_t *usb = (cvmx_usb_internal_state_t*)state;

    FUNC0();
    FUNC1("%p", *state);
    FUNC1("%d", pipe_handle);
    FUNC1("0x%llx", (unsigned long long)buffer);
    FUNC1("%d", buffer_length);

    /* Pipe handle checking is done later in a common place */
    if (FUNC4(!buffer))
        FUNC2(CVMX_USB_INVALID_PARAM);
    if (FUNC4(buffer_length < 0))
        FUNC2(CVMX_USB_INVALID_PARAM);

    submit_handle = FUNC3(usb, pipe_handle,
                                         CVMX_USB_TRANSFER_INTERRUPT,
                                         0, /* flags */
                                         buffer,
                                         buffer_length,
                                         0, /* control_header */
                                         0, /* iso_start_frame */
                                         0, /* iso_number_packets */
                                         NULL, /* iso_packets */
                                         callback,
                                         user_data);
    FUNC2(submit_handle);
}