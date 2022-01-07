
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_25__ {scalar_t__ type; int iso_number_packets; int idle_pipes; scalar_t__ transfer_type; scalar_t__ active_pipes; TYPE_3__* head; TYPE_3__* next; TYPE_2__* prev; TYPE_2__* tail; int stage; TYPE_1__* iso_packets; scalar_t__ actual_bytes; struct TYPE_25__* active_split; } ;
typedef TYPE_4__ cvmx_usb_transaction_t ;
typedef TYPE_4__ cvmx_usb_pipe_t ;
typedef TYPE_4__ cvmx_usb_internal_state_t ;
typedef TYPE_4__* cvmx_usb_complete_t ;
struct TYPE_24__ {TYPE_2__* prev; } ;
struct TYPE_23__ {TYPE_3__* next; } ;
struct TYPE_22__ {TYPE_4__* status; scalar_t__ length; } ;


 int CVMX_USB_CALLBACK_TRANSFER_COMPLETE ;
 TYPE_4__* CVMX_USB_COMPLETE_SUCCESS ;
 int CVMX_USB_LOG_CALLED () ;
 int CVMX_USB_LOG_PARAM (char*,TYPE_4__*) ;
 int CVMX_USB_RETURN_NOTHING () ;
 int CVMX_USB_STAGE_NON_CONTROL ;
 scalar_t__ CVMX_USB_TRANSFER_ISOCHRONOUS ;
 int __cvmx_usb_append_pipe (int *,TYPE_4__*) ;
 int __cvmx_usb_free_transaction (TYPE_4__*,TYPE_4__*) ;
 int __cvmx_usb_perform_callback (TYPE_4__*,TYPE_4__*,TYPE_4__*,int ,TYPE_4__*) ;
 int __cvmx_usb_remove_pipe (scalar_t__,TYPE_4__*) ;
 scalar_t__ cvmx_unlikely (int) ;

__attribute__((used)) static void __cvmx_usb_perform_complete(cvmx_usb_internal_state_t * usb,
                                        cvmx_usb_pipe_t *pipe,
                                        cvmx_usb_transaction_t *transaction,
                                        cvmx_usb_complete_t complete_code)
{
    CVMX_USB_LOG_CALLED();
    CVMX_USB_LOG_PARAM("%p", usb);
    CVMX_USB_LOG_PARAM("%p", pipe);
    CVMX_USB_LOG_PARAM("%p", transaction);
    CVMX_USB_LOG_PARAM("%d", complete_code);


    if (usb->active_split == transaction)
        usb->active_split = ((void*)0);



    if (cvmx_unlikely(transaction->type == CVMX_USB_TRANSFER_ISOCHRONOUS))
    {

        transaction->iso_packets[0].length = transaction->actual_bytes;
        transaction->iso_packets[0].status = complete_code;



        if ((transaction->iso_number_packets > 1) && (complete_code == CVMX_USB_COMPLETE_SUCCESS))
        {
            transaction->actual_bytes = 0;
            transaction->iso_number_packets--;
            transaction->iso_packets++;
            transaction->stage = CVMX_USB_STAGE_NON_CONTROL;
            goto done;
        }
    }


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
        __cvmx_usb_remove_pipe(usb->active_pipes + pipe->transfer_type, pipe);
        __cvmx_usb_append_pipe(&usb->idle_pipes, pipe);

    }
    __cvmx_usb_perform_callback(usb, pipe, transaction,
                                CVMX_USB_CALLBACK_TRANSFER_COMPLETE,
                                complete_code);
    __cvmx_usb_free_transaction(usb, transaction);
done:
    CVMX_USB_RETURN_NOTHING();
}
