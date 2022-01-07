
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__ cvmx_usb_pipe_t ;
struct TYPE_6__ {TYPE_1__* tail; TYPE_1__* head; } ;
typedef TYPE_2__ cvmx_usb_pipe_list_t ;



__attribute__((used)) static inline void __cvmx_usb_remove_pipe(cvmx_usb_pipe_list_t *list, cvmx_usb_pipe_t *pipe)
{
    if (list->head == pipe)
    {
        list->head = pipe->next;
        pipe->next = ((void*)0);
        if (list->head)
            list->head->prev = ((void*)0);
        else
            list->tail = ((void*)0);
    }
    else if (list->tail == pipe)
    {
        list->tail = pipe->prev;
        list->tail->next = ((void*)0);
        pipe->prev = ((void*)0);
    }
    else
    {
        pipe->prev->next = pipe->next;
        pipe->next->prev = pipe->prev;
        pipe->prev = ((void*)0);
        pipe->next = ((void*)0);
    }
}
