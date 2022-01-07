
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * crl; } ;
struct TYPE_6__ {TYPE_1__ data; int type; } ;
typedef TYPE_2__ X509_OBJECT ;
typedef int X509_CRL ;


 int X509_CRL_up_ref (int *) ;
 int X509_LU_CRL ;
 int x509_object_free_internal (TYPE_2__*) ;

int X509_OBJECT_set1_X509_CRL(X509_OBJECT *a, X509_CRL *obj)
{
    if (a == ((void*)0) || !X509_CRL_up_ref(obj))
        return 0;

    x509_object_free_internal(a);
    a->type = X509_LU_CRL;
    a->data.crl = obj;
    return 1;
}
