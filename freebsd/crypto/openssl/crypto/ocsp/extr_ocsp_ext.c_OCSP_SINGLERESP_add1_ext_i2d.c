
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int singleExtensions; } ;
typedef TYPE_1__ OCSP_SINGLERESP ;


 int X509V3_add1_i2d (int *,int,void*,int,unsigned long) ;

int OCSP_SINGLERESP_add1_ext_i2d(OCSP_SINGLERESP *x, int nid, void *value,
                                 int crit, unsigned long flags)
{
    return X509V3_add1_i2d(&x->singleExtensions, nid, value, crit, flags);
}
