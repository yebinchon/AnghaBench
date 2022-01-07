
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int accept_baton; int ctx; scalar_t__ (* accept_func ) (int ,TYPE_1__*,int ,int *,int *) ;int skt; int pool; } ;
typedef TYPE_1__ serf_listener_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_socket_t ;
typedef int apr_pool_t ;


 int apr_pool_create (int **,int ) ;
 int apr_pool_destroy (int *) ;
 scalar_t__ apr_socket_accept (int **,int ,int *) ;
 scalar_t__ stub1 (int ,TYPE_1__*,int ,int *,int *) ;

apr_status_t serf__process_listener(serf_listener_t *l)
{
    apr_status_t rv;
    apr_socket_t *in;
    apr_pool_t *p;

    apr_pool_create(&p, l->pool);

    rv = apr_socket_accept(&in, l->skt, p);

    if (rv) {
        apr_pool_destroy(p);
        return rv;
    }

    rv = l->accept_func(l->ctx, l, l->accept_baton, in, p);

    if (rv) {
        apr_pool_destroy(p);
        return rv;
    }

    return rv;
}
