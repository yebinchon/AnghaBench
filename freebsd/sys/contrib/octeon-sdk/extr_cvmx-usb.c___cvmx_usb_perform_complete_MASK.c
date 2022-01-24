#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {scalar_t__ type; int iso_number_packets; int /*<<< orphan*/  idle_pipes; scalar_t__ transfer_type; scalar_t__ active_pipes; TYPE_3__* head; TYPE_3__* next; TYPE_2__* prev; TYPE_2__* tail; int /*<<< orphan*/  stage; TYPE_1__* iso_packets; scalar_t__ actual_bytes; struct TYPE_25__* active_split; } ;
typedef  TYPE_4__ cvmx_usb_transaction_t ;
typedef  TYPE_4__ cvmx_usb_pipe_t ;
typedef  TYPE_4__ cvmx_usb_internal_state_t ;
typedef  TYPE_4__* cvmx_usb_complete_t ;
struct TYPE_24__ {TYPE_2__* prev; } ;
struct TYPE_23__ {TYPE_3__* next; } ;
struct TYPE_22__ {TYPE_4__* status; scalar_t__ length; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_USB_CALLBACK_TRANSFER_COMPLETE ; 
 TYPE_4__* CVMX_USB_COMPLETE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  CVMX_USB_STAGE_NON_CONTROL ; 
 scalar_t__ CVMX_USB_TRANSFER_ISOCHRONOUS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_4__*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(cvmx_usb_internal_state_t * usb,
                                        cvmx_usb_pipe_t *pipe,
                                        cvmx_usb_transaction_t *transaction,
                                        cvmx_usb_complete_t complete_code)
{
    FUNC0();
    FUNC1("%p", usb);
    FUNC1("%p", pipe);
    FUNC1("%p", transaction);
    FUNC1("%d", complete_code);

    /* If this was a split then clear our split in progress marker */
    if (usb->active_split == transaction)
        usb->active_split = NULL;

    /* Isochronous transactions need extra processing as they might not be done
        after a single data transfer */
    if (FUNC7(transaction->type == CVMX_USB_TRANSFER_ISOCHRONOUS))
    {
        /* Update the number of bytes transferred in this ISO packet */
        transaction->iso_packets[0].length = transaction->actual_bytes;
        transaction->iso_packets[0].status = complete_code;

        /* If there are more ISOs pending and we succeeded, schedule the next
            one */
        if ((transaction->iso_number_packets > 1) && (complete_code == CVMX_USB_COMPLETE_SUCCESS))
        {
            transaction->actual_bytes = 0;      /* No bytes transferred for this packet as of yet */
            transaction->iso_number_packets--;  /* One less ISO waiting to transfer */
            transaction->iso_packets++;         /* Increment to the next location in our packet array */
            transaction->stage = CVMX_USB_STAGE_NON_CONTROL;
            goto done;
        }
    }

    /* Remove the transaction from the pipe list */
    if (transaction->next)
        transaction->next->prev = transaction->prev;
    else
        pipe->tail = transaction->prev;
    if (transaction->prev)
        transaction->prev->next = transaction->next;
    else
        pipe->head = transaction->next;
    if (!pipe->head)
    {
        FUNC6(usb->active_pipes + pipe->transfer_type, pipe);
        FUNC3(&usb->idle_pipes, pipe);

    }
    FUNC5(usb, pipe, transaction,
                                CVMX_USB_CALLBACK_TRANSFER_COMPLETE,
                                complete_code);
    FUNC4(usb, transaction);
done:
    FUNC2();
}