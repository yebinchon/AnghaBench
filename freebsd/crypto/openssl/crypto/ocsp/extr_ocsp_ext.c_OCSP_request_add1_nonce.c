
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int requestExtensions; } ;
struct TYPE_5__ {TYPE_1__ tbsRequest; } ;
typedef TYPE_2__ OCSP_REQUEST ;


 int ocsp_add1_nonce (int *,unsigned char*,int) ;

int OCSP_request_add1_nonce(OCSP_REQUEST *req, unsigned char *val, int len)
{
    return ocsp_add1_nonce(&req->tbsRequest.requestExtensions, val, len);
}
