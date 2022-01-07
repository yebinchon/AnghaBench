
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * current_async_response; int async_handler_baton; int (* async_handler ) (int *,int *,int ,int *) ;int async_acceptor_baton; int stream; int * (* async_acceptor ) (int *,int ,int ,int *) ;} ;
typedef TYPE_1__ serf_connection_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_STATUS_IS_EOF (int ) ;
 int APR_SUCCESS ;
 int serf_bucket_destroy (int *) ;
 int * stub1 (int *,int ,int ,int *) ;
 int stub2 (int *,int *,int ,int *) ;

__attribute__((used)) static apr_status_t handle_async_response(serf_connection_t *conn,
                                          apr_pool_t *pool)
{
    apr_status_t status;

    if (conn->current_async_response == ((void*)0)) {
        conn->current_async_response =
            (*conn->async_acceptor)(((void*)0), conn->stream,
                                    conn->async_acceptor_baton, pool);
    }

    status = (*conn->async_handler)(((void*)0), conn->current_async_response,
                                    conn->async_handler_baton, pool);

    if (APR_STATUS_IS_EOF(status)) {
        serf_bucket_destroy(conn->current_async_response);
        conn->current_async_response = ((void*)0);
        status = APR_SUCCESS;
    }

    return status;
}
