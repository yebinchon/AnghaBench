
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* akid; } ;
typedef TYPE_2__ X509 ;
struct TYPE_5__ {int const* serial; } ;
typedef int ASN1_INTEGER ;


 int X509_check_purpose (TYPE_2__*,int,int) ;

const ASN1_INTEGER *X509_get0_authority_serial(X509 *x)
{

    X509_check_purpose(x, -1, -1);
    return (x->akid != ((void*)0) ? x->akid->serial : ((void*)0));
}
