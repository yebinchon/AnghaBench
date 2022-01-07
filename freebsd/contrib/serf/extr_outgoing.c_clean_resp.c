
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * respool; int * req_bkt; int * resp_bkt; } ;
typedef TYPE_1__ serf_request_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int serf_bucket_destroy (int *) ;

__attribute__((used)) static apr_status_t clean_resp(void *data)
{
    serf_request_t *request = data;







    if (request->resp_bkt) {
        serf_bucket_destroy(request->resp_bkt);
        request->resp_bkt = ((void*)0);
    }
    if (request->req_bkt) {
        serf_bucket_destroy(request->req_bkt);
        request->req_bkt = ((void*)0);
    }







    request->respool = ((void*)0);

    return APR_SUCCESS;
}
