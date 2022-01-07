
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int priority; int ssltunnel; int * auth_baton; int * next; scalar_t__ writing_started; int * resp_bkt; int * req_bkt; int * respool; int * handler; void* setup_baton; int setup; TYPE_2__* conn; } ;
typedef TYPE_1__ serf_request_t ;
typedef int serf_request_setup_t ;
struct TYPE_7__ {int allocator; } ;
typedef TYPE_2__ serf_connection_t ;


 TYPE_1__* serf_bucket_mem_alloc (int ,int) ;

__attribute__((used)) static serf_request_t *
create_request(serf_connection_t *conn,
               serf_request_setup_t setup,
               void *setup_baton,
               int priority,
               int ssltunnel)
{
    serf_request_t *request;

    request = serf_bucket_mem_alloc(conn->allocator, sizeof(*request));
    request->conn = conn;
    request->setup = setup;
    request->setup_baton = setup_baton;
    request->handler = ((void*)0);
    request->respool = ((void*)0);
    request->req_bkt = ((void*)0);
    request->resp_bkt = ((void*)0);
    request->priority = priority;
    request->writing_started = 0;
    request->ssltunnel = ssltunnel;
    request->next = ((void*)0);
    request->auth_baton = ((void*)0);

    return request;
}
