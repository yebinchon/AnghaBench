
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ respool; int allocator; TYPE_4__* req_bkt; TYPE_4__* resp_bkt; TYPE_2__* conn; } ;
typedef TYPE_1__ serf_request_t ;
struct TYPE_7__ {int allocator; } ;
typedef TYPE_2__ serf_connection_t ;
typedef int apr_status_t ;
struct TYPE_8__ {int allocator; } ;


 int APR_SUCCESS ;
 int apr_pool_destroy (scalar_t__) ;
 int serf_bucket_destroy (TYPE_4__*) ;
 int serf_bucket_mem_free (int ,TYPE_1__*) ;
 int serf_debug__bucket_alloc_check (int ) ;
 int serf_debug__closed_conn (int ) ;

__attribute__((used)) static apr_status_t destroy_request(serf_request_t *request)
{
    serf_connection_t *conn = request->conn;



    if (request->resp_bkt) {
        serf_debug__closed_conn(request->resp_bkt->allocator);
        serf_bucket_destroy(request->resp_bkt);
        request->resp_bkt = ((void*)0);
    }
    if (request->req_bkt) {
        serf_debug__closed_conn(request->req_bkt->allocator);
        serf_bucket_destroy(request->req_bkt);
        request->req_bkt = ((void*)0);
    }

    serf_debug__bucket_alloc_check(request->allocator);
    if (request->respool) {

        apr_pool_destroy(request->respool);
    }

    serf_bucket_mem_free(conn->allocator, request);

    return APR_SUCCESS;
}
