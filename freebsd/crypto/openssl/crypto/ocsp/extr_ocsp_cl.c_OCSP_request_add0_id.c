
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int * reqCert; } ;
struct TYPE_9__ {int requestList; } ;
struct TYPE_10__ {TYPE_1__ tbsRequest; } ;
typedef TYPE_2__ OCSP_REQUEST ;
typedef TYPE_3__ OCSP_ONEREQ ;
typedef int OCSP_CERTID ;


 int OCSP_CERTID_free (int *) ;
 int OCSP_ONEREQ_free (TYPE_3__*) ;
 TYPE_3__* OCSP_ONEREQ_new () ;
 int sk_OCSP_ONEREQ_push (int ,TYPE_3__*) ;

OCSP_ONEREQ *OCSP_request_add0_id(OCSP_REQUEST *req, OCSP_CERTID *cid)
{
    OCSP_ONEREQ *one = ((void*)0);

    if ((one = OCSP_ONEREQ_new()) == ((void*)0))
        return ((void*)0);
    OCSP_CERTID_free(one->reqCert);
    one->reqCert = cid;
    if (req && !sk_OCSP_ONEREQ_push(req->tbsRequest.requestList, one)) {
        one->reqCert = ((void*)0);
        goto err;
    }
    return one;
 err:
    OCSP_ONEREQ_free(one);
    return ((void*)0);
}
