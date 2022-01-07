
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int respool; int handler_baton; int handler; int acceptor_baton; int acceptor; int req_bkt; int setup_baton; int (* setup ) (TYPE_1__*,int ,int *,int *,int *,int *,int *,int ) ;int allocator; TYPE_2__* conn; } ;
typedef TYPE_1__ serf_request_t ;
struct TYPE_7__ {int pool; } ;
typedef TYPE_2__ serf_connection_t ;
typedef int apr_status_t ;


 int apr_pool_cleanup_register (int ,TYPE_1__*,int ,int ) ;
 int apr_pool_create (int *,int ) ;
 int clean_resp ;
 int serf_bucket_allocator_create (int ,int *,int *) ;
 int stub1 (TYPE_1__*,int ,int *,int *,int *,int *,int *,int ) ;

__attribute__((used)) static apr_status_t setup_request(serf_request_t *request)
{
    serf_connection_t *conn = request->conn;
    apr_status_t status;


    apr_pool_create(&request->respool, conn->pool);
    request->allocator = serf_bucket_allocator_create(request->respool,
                                                      ((void*)0), ((void*)0));
    apr_pool_cleanup_register(request->respool, request,
                              clean_resp, clean_resp);


    status = request->setup(request, request->setup_baton,
                            &request->req_bkt,
                            &request->acceptor,
                            &request->acceptor_baton,
                            &request->handler,
                            &request->handler_baton,
                            request->respool);
    return status;
}
