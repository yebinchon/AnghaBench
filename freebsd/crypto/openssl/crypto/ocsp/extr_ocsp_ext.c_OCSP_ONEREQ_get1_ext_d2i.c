
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int singleRequestExtensions; } ;
typedef TYPE_1__ OCSP_ONEREQ ;


 void* X509V3_get_d2i (int ,int,int*,int*) ;

void *OCSP_ONEREQ_get1_ext_d2i(OCSP_ONEREQ *x, int nid, int *crit, int *idx)
{
    return X509V3_get_d2i(x->singleRequestExtensions, nid, crit, idx);
}
