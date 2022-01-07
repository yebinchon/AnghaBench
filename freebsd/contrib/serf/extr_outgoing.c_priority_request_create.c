
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* next; scalar_t__ priority; int ssltunnel; scalar_t__ writing_started; int * req_bkt; } ;
typedef TYPE_2__ serf_request_t ;
typedef int serf_request_setup_t ;
struct TYPE_10__ {int dirty_conn; TYPE_1__* ctx; TYPE_2__* requests; } ;
typedef TYPE_3__ serf_connection_t ;
struct TYPE_8__ {int dirty_pollset; } ;


 TYPE_2__* create_request (TYPE_3__*,int ,void*,int,int) ;

__attribute__((used)) static serf_request_t *
priority_request_create(serf_connection_t *conn,
                        int ssltunnelreq,
                        serf_request_setup_t setup,
                        void *setup_baton)
{
    serf_request_t *request;
    serf_request_t *iter, *prev;

    request = create_request(conn, setup, setup_baton,
                             1,
                             ssltunnelreq);


    iter = conn->requests;
    prev = ((void*)0);


    while (iter != ((void*)0) && iter->req_bkt == ((void*)0) && iter->writing_started) {
        prev = iter;
        iter = iter->next;
    }






    if (!request->ssltunnel) {

        while (iter != ((void*)0) && iter->priority) {
            prev = iter;
            iter = iter->next;
        }
    }

    if (prev) {
        request->next = iter;
        prev->next = request;
    } else {
        request->next = iter;
        conn->requests = request;
    }


    conn->ctx->dirty_pollset = 1;
    conn->dirty_conn = 1;

    return request;
}
