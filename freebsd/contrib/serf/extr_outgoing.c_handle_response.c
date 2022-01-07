
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int handler_baton; int resp_bkt; scalar_t__ (* handler ) (TYPE_3__*,int ,int ,int *) ;TYPE_2__* conn; } ;
typedef TYPE_3__ serf_request_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {TYPE_1__* ctx; } ;
struct TYPE_7__ {scalar_t__ cred_cb; } ;


 scalar_t__ APR_SUCCESS ;
 scalar_t__ serf__handle_auth_response (int*,TYPE_3__*,int ,int ,int *) ;
 scalar_t__ stub1 (TYPE_3__*,int ,int ,int *) ;

__attribute__((used)) static apr_status_t handle_response(serf_request_t *request,
                                    apr_pool_t *pool)
{
    apr_status_t status = APR_SUCCESS;
    int consumed_response = 0;







    if (request->conn->ctx->cred_cb) {
      status = serf__handle_auth_response(&consumed_response,
                                          request,
                                          request->resp_bkt,
                                          request->handler_baton,
                                          pool);







      if (status) {
          return status;
      }
    }

    if (!consumed_response) {
        return (*request->handler)(request,
                                   request->resp_bkt,
                                   request->handler_baton,
                                   pool);
    }

    return status;
}
