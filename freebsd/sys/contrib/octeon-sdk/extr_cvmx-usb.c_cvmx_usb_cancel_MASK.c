#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int chdis; scalar_t__ chena; } ;
struct TYPE_12__ {int /*<<< orphan*/  u32; TYPE_1__ s; } ;
typedef  TYPE_2__ cvmx_usbcx_hccharx_t ;
struct TYPE_13__ {int flags; } ;
typedef  TYPE_3__ cvmx_usb_transaction_t ;
typedef  int /*<<< orphan*/  cvmx_usb_status_t ;
typedef  int /*<<< orphan*/  cvmx_usb_state_t ;
struct TYPE_14__ {int flags; size_t channel; TYPE_3__* head; } ;
typedef  TYPE_4__ cvmx_usb_pipe_t ;
struct TYPE_15__ {int /*<<< orphan*/  index; int /*<<< orphan*/ ** pipe_for_channel; TYPE_3__* transaction; TYPE_4__* pipe; } ;
typedef  TYPE_5__ cvmx_usb_internal_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_SYNCW ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CVMX_USB_COMPLETE_CANCEL ; 
 int /*<<< orphan*/  CVMX_USB_INVALID_PARAM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CVMX_USB_SUCCESS ; 
 int MAX_PIPES ; 
 int MAX_TRANSACTIONS ; 
 int __CVMX_USB_PIPE_FLAGS_OPEN ; 
 int __CVMX_USB_PIPE_FLAGS_SCHEDULED ; 
 int __CVMX_USB_TRANSACTION_FLAGS_IN_USE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

cvmx_usb_status_t FUNC8(cvmx_usb_state_t *state, int pipe_handle,
                                  int submit_handle)
{
    cvmx_usb_transaction_t *transaction;
    cvmx_usb_internal_state_t *usb = (cvmx_usb_internal_state_t*)state;
    cvmx_usb_pipe_t *pipe = usb->pipe + pipe_handle;

    FUNC1();
    FUNC2("%p", *state);
    FUNC2("%d", pipe_handle);
    FUNC2("%d", submit_handle);

    if (FUNC7((pipe_handle < 0) || (pipe_handle >= MAX_PIPES)))
        FUNC3(CVMX_USB_INVALID_PARAM);
    if (FUNC7((submit_handle < 0) || (submit_handle >= MAX_TRANSACTIONS)))
        FUNC3(CVMX_USB_INVALID_PARAM);

    /* Fail if the pipe isn't open */
    if (FUNC7((pipe->flags & __CVMX_USB_PIPE_FLAGS_OPEN) == 0))
        FUNC3(CVMX_USB_INVALID_PARAM);

    transaction = usb->transaction + submit_handle;

    /* Fail if this transaction already completed */
    if (FUNC7((transaction->flags & __CVMX_USB_TRANSACTION_FLAGS_IN_USE) == 0))
        FUNC3(CVMX_USB_INVALID_PARAM);

    /* If the transaction is the HEAD of the queue and scheduled. We need to
        treat it special */
    if ((pipe->head == transaction) &&
        (pipe->flags & __CVMX_USB_PIPE_FLAGS_SCHEDULED))
    {
        cvmx_usbcx_hccharx_t usbc_hcchar;

        usb->pipe_for_channel[pipe->channel] = NULL;
        pipe->flags &= ~__CVMX_USB_PIPE_FLAGS_SCHEDULED;

        CVMX_SYNCW;

        usbc_hcchar.u32 = FUNC5(usb, FUNC0(pipe->channel, usb->index));
        /* If the channel isn't enabled then the transaction already completed */
        if (usbc_hcchar.s.chena)
        {
            usbc_hcchar.s.chdis = 1;
            FUNC6(usb, FUNC0(pipe->channel, usb->index), usbc_hcchar.u32);
        }
    }
    FUNC4(usb, pipe, transaction, CVMX_USB_COMPLETE_CANCEL);
    FUNC3(CVMX_USB_SUCCESS);
}