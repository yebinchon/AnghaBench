#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
typedef  scalar_t__ cvmx_usb_transfer_t ;
struct TYPE_12__ {scalar_t__ type; int flags; int buffer_length; int iso_start_frame; int iso_number_packets; struct TYPE_12__* prev; struct TYPE_12__* next; int /*<<< orphan*/  stage; void* callback_data; int /*<<< orphan*/  callback; int /*<<< orphan*/ * iso_packets; void* control_header; void* buffer; } ;
typedef  TYPE_1__ cvmx_usb_transaction_t ;
struct TYPE_13__ {int flags; scalar_t__ transfer_type; scalar_t__ next_tx_frame; int interval; TYPE_1__* tail; TYPE_1__* head; } ;
typedef  TYPE_2__ cvmx_usb_pipe_t ;
typedef  int /*<<< orphan*/  cvmx_usb_iso_packet_t ;
struct TYPE_14__ {scalar_t__ frame_number; scalar_t__ active_pipes; int /*<<< orphan*/  idle_pipes; TYPE_2__* pipe; } ;
typedef  TYPE_3__ cvmx_usb_internal_state_t ;
typedef  int /*<<< orphan*/  cvmx_usb_callback_func_t ;

/* Variables and functions */
 int CVMX_USB_INVALID_PARAM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int CVMX_USB_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CVMX_USB_STAGE_NON_CONTROL ; 
 int /*<<< orphan*/  CVMX_USB_STAGE_SETUP ; 
 scalar_t__ CVMX_USB_TRANSFER_CONTROL ; 
 int MAX_PIPES ; 
 int __CVMX_USB_PIPE_FLAGS_OPEN ; 
 TYPE_1__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_2__*) ; 
 int FUNC4 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(cvmx_usb_internal_state_t *usb,
                                         int pipe_handle,
                                         cvmx_usb_transfer_t type,
                                         int flags,
                                         uint64_t buffer,
                                         int buffer_length,
                                         uint64_t control_header,
                                         int iso_start_frame,
                                         int iso_number_packets,
                                         cvmx_usb_iso_packet_t *iso_packets,
                                         cvmx_usb_callback_func_t callback,
                                         void *user_data)
{
    int submit_handle;
    cvmx_usb_transaction_t *transaction;
    cvmx_usb_pipe_t *pipe = usb->pipe + pipe_handle;

    FUNC0();
    if (FUNC7((pipe_handle < 0) || (pipe_handle >= MAX_PIPES)))
        FUNC1(CVMX_USB_INVALID_PARAM);
    /* Fail if the pipe isn't open */
    if (FUNC7((pipe->flags & __CVMX_USB_PIPE_FLAGS_OPEN) == 0))
        FUNC1(CVMX_USB_INVALID_PARAM);
    if (FUNC7(pipe->transfer_type != type))
        FUNC1(CVMX_USB_INVALID_PARAM);

    transaction = FUNC2(usb);
    if (FUNC7(!transaction))
        FUNC1(CVMX_USB_NO_MEMORY);

    transaction->type = type;
    transaction->flags |= flags;
    transaction->buffer = buffer;
    transaction->buffer_length = buffer_length;
    transaction->control_header = control_header;
    transaction->iso_start_frame = iso_start_frame; // FIXME: This is not used, implement it
    transaction->iso_number_packets = iso_number_packets;
    transaction->iso_packets = iso_packets;
    transaction->callback = callback;
    transaction->callback_data = user_data;
    if (transaction->type == CVMX_USB_TRANSFER_CONTROL)
        transaction->stage = CVMX_USB_STAGE_SETUP;
    else
        transaction->stage = CVMX_USB_STAGE_NON_CONTROL;

    transaction->next = NULL;
    if (pipe->tail)
    {
        transaction->prev = pipe->tail;
        transaction->prev->next = transaction;
    }
    else
    {
        if (pipe->next_tx_frame < usb->frame_number)
            pipe->next_tx_frame = usb->frame_number + pipe->interval -
                (usb->frame_number - pipe->next_tx_frame) % pipe->interval;
        transaction->prev = NULL;
        pipe->head = transaction;
        FUNC5(&usb->idle_pipes, pipe);
        FUNC3(usb->active_pipes + pipe->transfer_type, pipe);
    }
    pipe->tail = transaction;

    submit_handle = FUNC4(usb, transaction);

    /* We may need to schedule the pipe if this was the head of the pipe */
    if (!transaction->prev)
        FUNC6(usb, 0);

    FUNC1(submit_handle);
}