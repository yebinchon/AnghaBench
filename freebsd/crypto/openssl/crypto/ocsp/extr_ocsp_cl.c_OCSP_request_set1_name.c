
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_8__ {int directoryName; } ;
struct TYPE_11__ {int type; TYPE_1__ d; } ;
struct TYPE_9__ {TYPE_4__* requestorName; } ;
struct TYPE_10__ {TYPE_2__ tbsRequest; } ;
typedef TYPE_3__ OCSP_REQUEST ;
typedef TYPE_4__ GENERAL_NAME ;


 int GENERAL_NAME_free (TYPE_4__*) ;
 TYPE_4__* GENERAL_NAME_new () ;
 int GEN_DIRNAME ;
 int X509_NAME_set (int *,int *) ;

int OCSP_request_set1_name(OCSP_REQUEST *req, X509_NAME *nm)
{
    GENERAL_NAME *gen;

    gen = GENERAL_NAME_new();
    if (gen == ((void*)0))
        return 0;
    if (!X509_NAME_set(&gen->d.directoryName, nm)) {
        GENERAL_NAME_free(gen);
        return 0;
    }
    gen->type = GEN_DIRNAME;
    GENERAL_NAME_free(req->tbsRequest.requestorName);
    req->tbsRequest.requestorName = gen;
    return 1;
}
