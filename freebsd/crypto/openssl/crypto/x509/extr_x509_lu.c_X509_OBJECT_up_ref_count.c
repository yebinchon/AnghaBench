
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int crl; int x509; } ;
struct TYPE_5__ {int type; TYPE_1__ data; } ;
typedef TYPE_2__ X509_OBJECT ;


 int X509_CRL_up_ref (int ) ;



 int X509_up_ref (int ) ;

int X509_OBJECT_up_ref_count(X509_OBJECT *a)
{
    switch (a->type) {
    case 129:
        break;
    case 128:
        return X509_up_ref(a->data.x509);
    case 130:
        return X509_CRL_up_ref(a->data.crl);
    }
    return 1;
}
