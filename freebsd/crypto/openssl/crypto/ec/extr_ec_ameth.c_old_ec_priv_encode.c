
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ec; } ;
struct TYPE_5__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;


 int i2d_ECPrivateKey (int ,unsigned char**) ;

__attribute__((used)) static int old_ec_priv_encode(const EVP_PKEY *pkey, unsigned char **pder)
{
    return i2d_ECPrivateKey(pkey->pkey.ec, pder);
}
