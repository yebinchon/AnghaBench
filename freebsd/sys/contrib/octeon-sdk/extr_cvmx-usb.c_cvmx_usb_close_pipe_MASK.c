#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cvmx_usb_status_t ;
typedef  int /*<<< orphan*/  cvmx_usb_state_t ;
struct TYPE_5__ {int flags; int head; } ;
typedef  TYPE_1__ cvmx_usb_pipe_t ;
struct TYPE_6__ {int /*<<< orphan*/  free_pipes; int /*<<< orphan*/  idle_pipes; TYPE_1__* pipe; } ;
typedef  TYPE_2__ cvmx_usb_internal_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_USB_BUSY ; 
 int /*<<< orphan*/  CVMX_USB_INVALID_PARAM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CVMX_USB_SUCCESS ; 
 int MAX_PIPES ; 
 int __CVMX_USB_PIPE_FLAGS_OPEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int) ; 

cvmx_usb_status_t FUNC6(cvmx_usb_state_t *state, int pipe_handle)
{
    cvmx_usb_internal_state_t *usb = (cvmx_usb_internal_state_t*)state;
    cvmx_usb_pipe_t *pipe = usb->pipe + pipe_handle;

    FUNC0();
    FUNC1("%p", *state);
    FUNC1("%d", pipe_handle);
    if (FUNC5((pipe_handle < 0) || (pipe_handle >= MAX_PIPES)))
        FUNC2(CVMX_USB_INVALID_PARAM);

    /* Fail if the pipe isn't open */
    if (FUNC5((pipe->flags & __CVMX_USB_PIPE_FLAGS_OPEN) == 0))
        FUNC2(CVMX_USB_INVALID_PARAM);

    /* Fail if the pipe has pending transactions */
    if (FUNC5(pipe->head))
        FUNC2(CVMX_USB_BUSY);

    pipe->flags = 0;
    FUNC4(&usb->idle_pipes, pipe);
    FUNC3(&usb->free_pipes, pipe);

    FUNC2(CVMX_USB_SUCCESS);
}