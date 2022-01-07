
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



__attribute__((used)) static inline void __cvmx_usb_append_pipe(cvmx_usb_pipe_list_t *list, cvmx_usb_pipe_t *pipe)
{
    pipe->next = ((void*)0);
    pipe->prev = list->tail;
    if (list->tail)
        list->tail->next = pipe;
    else
        list->head = pipe;
    list->tail = pipe;
}
