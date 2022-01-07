
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ameth; } ;
struct TYPE_4__ {int pkey_id; } ;
typedef TYPE_2__ EVP_PKEY ;


 int ED448_BITS ;
 scalar_t__ IS25519 (int ) ;
 scalar_t__ ISX448 (int ) ;
 int X25519_BITS ;
 int X448_BITS ;

__attribute__((used)) static int ecx_bits(const EVP_PKEY *pkey)
{
    if (IS25519(pkey->ameth->pkey_id)) {
        return X25519_BITS;
    } else if(ISX448(pkey->ameth->pkey_id)) {
        return X448_BITS;
    } else {
        return ED448_BITS;
    }
}
