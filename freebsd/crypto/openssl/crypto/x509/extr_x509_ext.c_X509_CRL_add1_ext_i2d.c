
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int extensions; } ;
struct TYPE_5__ {TYPE_1__ crl; } ;
typedef TYPE_2__ X509_CRL ;


 int X509V3_add1_i2d (int *,int,void*,int,unsigned long) ;

int X509_CRL_add1_ext_i2d(X509_CRL *x, int nid, void *value, int crit,
                          unsigned long flags)
{
    return X509V3_add1_i2d(&x->crl.extensions, nid, value, crit, flags);
}
