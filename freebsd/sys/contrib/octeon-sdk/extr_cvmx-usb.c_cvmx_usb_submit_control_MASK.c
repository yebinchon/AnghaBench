#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  cvmx_usb_state_t ;
typedef  int /*<<< orphan*/  cvmx_usb_internal_state_t ;
struct TYPE_4__ {int request_type; int /*<<< orphan*/  length; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
typedef  TYPE_2__ cvmx_usb_control_header_t ;
typedef  int /*<<< orphan*/  cvmx_usb_callback_func_t ;

/* Variables and functions */
 int CVMX_USB_INVALID_PARAM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  CVMX_USB_TRANSFER_CONTROL ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(cvmx_usb_state_t *state, int pipe_handle,
                            uint64_t control_header,
                            uint64_t buffer, int buffer_length,
                            cvmx_usb_callback_func_t callback,
                            void *user_data)
{
    int submit_handle;
    cvmx_usb_internal_state_t *usb = (cvmx_usb_internal_state_t*)state;
    cvmx_usb_control_header_t *header = FUNC5(control_header);

    FUNC0();
    FUNC1("%p", *state);
    FUNC1("%d", pipe_handle);
    FUNC1("0x%llx", (unsigned long long)control_header);
    FUNC1("0x%llx", (unsigned long long)buffer);
    FUNC1("%d", buffer_length);

    /* Pipe handle checking is done later in a common place */
    if (FUNC6(!control_header))
        FUNC2(CVMX_USB_INVALID_PARAM);
    /* Some drivers send a buffer with a zero length. God only knows why */
    if (FUNC6(buffer && (buffer_length < 0)))
        FUNC2(CVMX_USB_INVALID_PARAM);
    if (FUNC6(!buffer && (buffer_length != 0)))
        FUNC2(CVMX_USB_INVALID_PARAM);
    if ((header->s.request_type & 0x80) == 0)
        buffer_length = FUNC4(header->s.length);

    submit_handle = FUNC3(usb, pipe_handle,
                                         CVMX_USB_TRANSFER_CONTROL,
                                         0, /* flags */
                                         buffer,
                                         buffer_length,
                                         control_header,
                                         0, /* iso_start_frame */
                                         0, /* iso_number_packets */
                                         NULL, /* iso_packets */
                                         callback,
                                         user_data);
    FUNC2(submit_handle);
}