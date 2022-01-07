
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int singleExtensions; } ;
typedef TYPE_1__ OCSP_SINGLERESP ;


 int X509v3_get_ext_count (int ) ;

int OCSP_SINGLERESP_get_ext_count(OCSP_SINGLERESP *x)
{
    return X509v3_get_ext_count(x->singleExtensions);
}
