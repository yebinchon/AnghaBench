
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* conn; } ;
typedef TYPE_2__ serf_request_t ;
typedef int apr_status_t ;
struct TYPE_5__ {int requests; } ;


 int cancel_request (TYPE_2__*,int *,int ) ;

apr_status_t serf_request_cancel(serf_request_t *request)
{
    return cancel_request(request, &request->conn->requests, 0);
}
