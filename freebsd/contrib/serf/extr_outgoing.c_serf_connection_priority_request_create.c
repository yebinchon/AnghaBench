
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_request_t ;
typedef int serf_request_setup_t ;
typedef int serf_connection_t ;


 int * priority_request_create (int *,int ,int ,void*) ;

serf_request_t *serf_connection_priority_request_create(
    serf_connection_t *conn,
    serf_request_setup_t setup,
    void *setup_baton)
{
    return priority_request_create(conn,
                                   0,
                                   setup, setup_baton);
}
