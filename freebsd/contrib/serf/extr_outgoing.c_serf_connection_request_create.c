
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int serf_request_t ;
typedef int serf_request_setup_t ;
struct TYPE_6__ {int dirty_conn; TYPE_1__* ctx; int requests_tail; int requests; } ;
typedef TYPE_2__ serf_connection_t ;
struct TYPE_5__ {int dirty_pollset; } ;


 int * create_request (TYPE_2__*,int ,void*,int ,int ) ;
 int link_requests (int *,int *,int *) ;

serf_request_t *serf_connection_request_create(
    serf_connection_t *conn,
    serf_request_setup_t setup,
    void *setup_baton)
{
    serf_request_t *request;

    request = create_request(conn, setup, setup_baton,
                             0,
                             0 );


    link_requests(&conn->requests, &conn->requests_tail, request);


    conn->ctx->dirty_pollset = 1;
    conn->dirty_conn = 1;

    return request;
}
