
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * dh; } ;
struct TYPE_6__ {int * ameth; TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;


 int * DH_new () ;
 int dhx_asn1_meth ;
 int int_dh_param_copy (int *,int *,int) ;

__attribute__((used)) static int dh_copy_parameters(EVP_PKEY *to, const EVP_PKEY *from)
{
    if (to->pkey.dh == ((void*)0)) {
        to->pkey.dh = DH_new();
        if (to->pkey.dh == ((void*)0))
            return 0;
    }
    return int_dh_param_copy(to->pkey.dh, from->pkey.dh,
                             from->ameth == &dhx_asn1_meth);
}
