
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; int respool; int handler_baton; int (* handler ) (TYPE_1__*,int *,int ,int ) ;} ;
typedef TYPE_1__ serf_request_t ;
typedef int apr_status_t ;


 int destroy_request (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int *,int ,int ) ;

__attribute__((used)) static apr_status_t cancel_request(serf_request_t *request,
                                   serf_request_t **list,
                                   int notify_request)
{

    if (request->handler && notify_request) {



        (*request->handler)(request, ((void*)0), request->handler_baton,
                            request->respool);
    }

    if (*list == request) {
        *list = request->next;
    }
    else {
        serf_request_t *scan = *list;

        while (scan->next && scan->next != request)
            scan = scan->next;

        if (scan->next) {
            scan->next = scan->next->next;
        }
    }

    return destroy_request(request);
}
