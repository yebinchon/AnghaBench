
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int pubkey; } ;
struct TYPE_6__ {TYPE_4__* ecx; } ;
struct TYPE_8__ {TYPE_2__* ameth; TYPE_1__ pkey; } ;
struct TYPE_7__ {int pkey_id; } ;
typedef TYPE_3__ EVP_PKEY ;
typedef TYPE_4__ ECX_KEY ;


 size_t KEYLENID (int ) ;
 int memcpy (unsigned char*,int ,size_t) ;

__attribute__((used)) static int ecx_get_pub_key(const EVP_PKEY *pkey, unsigned char *pub,
                           size_t *len)
{
    const ECX_KEY *key = pkey->pkey.ecx;

    if (pub == ((void*)0)) {
        *len = KEYLENID(pkey->ameth->pkey_id);
        return 1;
    }

    if (key == ((void*)0)
            || *len < (size_t)KEYLENID(pkey->ameth->pkey_id))
        return 0;

    *len = KEYLENID(pkey->ameth->pkey_id);
    memcpy(pub, key->pubkey, *len);

    return 1;
}
