
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dh; } ;
struct TYPE_7__ {TYPE_2__ pkey; } ;
struct TYPE_5__ {int p; } ;
typedef TYPE_3__ EVP_PKEY ;


 int BN_num_bits (int ) ;

__attribute__((used)) static int dh_bits(const EVP_PKEY *pkey)
{
    return BN_num_bits(pkey->pkey.dh->p);
}
