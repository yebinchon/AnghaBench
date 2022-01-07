
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* dh; } ;
struct TYPE_8__ {TYPE_1__ pkey; int * ameth; } ;
struct TYPE_7__ {int q; int g; int p; } ;
typedef TYPE_3__ EVP_PKEY ;


 scalar_t__ BN_cmp (int ,int ) ;
 int dhx_asn1_meth ;

__attribute__((used)) static int dh_cmp_parameters(const EVP_PKEY *a, const EVP_PKEY *b)
{
    if (BN_cmp(a->pkey.dh->p, b->pkey.dh->p) ||
        BN_cmp(a->pkey.dh->g, b->pkey.dh->g))
        return 0;
    else if (a->ameth == &dhx_asn1_meth) {
        if (BN_cmp(a->pkey.dh->q, b->pkey.dh->q))
            return 0;
    }
    return 1;
}
