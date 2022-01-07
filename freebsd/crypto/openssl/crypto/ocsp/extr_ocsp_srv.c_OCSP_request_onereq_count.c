
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int requestList; } ;
struct TYPE_5__ {TYPE_1__ tbsRequest; } ;
typedef TYPE_2__ OCSP_REQUEST ;


 int sk_OCSP_ONEREQ_num (int ) ;

int OCSP_request_onereq_count(OCSP_REQUEST *req)
{
    return sk_OCSP_ONEREQ_num(req->tbsRequest.requestList);
}
