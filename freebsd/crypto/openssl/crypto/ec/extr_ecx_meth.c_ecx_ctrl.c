
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* ecx; } ;
struct TYPE_11__ {TYPE_3__ pkey; TYPE_1__* ameth; } ;
struct TYPE_9__ {int pubkey; } ;
struct TYPE_8__ {int pkey_id; } ;
typedef TYPE_4__ EVP_PKEY ;




 int KEYLEN (TYPE_4__*) ;
 int KEY_OP_PUBLIC ;
 unsigned char* OPENSSL_memdup (int ,int) ;
 int ecx_key_op (TYPE_4__*,int ,int *,void*,long,int ) ;

__attribute__((used)) static int ecx_ctrl(EVP_PKEY *pkey, int op, long arg1, void *arg2)
{
    switch (op) {

    case 128:
        return ecx_key_op(pkey, pkey->ameth->pkey_id, ((void*)0), arg2, arg1,
                          KEY_OP_PUBLIC);

    case 129:
        if (pkey->pkey.ecx != ((void*)0)) {
            unsigned char **ppt = arg2;

            *ppt = OPENSSL_memdup(pkey->pkey.ecx->pubkey, KEYLEN(pkey));
            if (*ppt != ((void*)0))
                return KEYLEN(pkey);
        }
        return 0;

    default:
        return -2;

    }
}
