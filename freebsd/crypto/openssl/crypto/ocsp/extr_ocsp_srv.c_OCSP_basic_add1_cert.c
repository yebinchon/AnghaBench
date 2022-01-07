
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_3__ {int * certs; } ;
typedef TYPE_1__ OCSP_BASICRESP ;


 int X509_up_ref (int *) ;
 int * sk_X509_new_null () ;
 int sk_X509_push (int *,int *) ;

int OCSP_basic_add1_cert(OCSP_BASICRESP *resp, X509 *cert)
{
    if (resp->certs == ((void*)0)
        && (resp->certs = sk_X509_new_null()) == ((void*)0))
        return 0;

    if (!sk_X509_push(resp->certs, cert))
        return 0;
    X509_up_ref(cert);
    return 1;
}
