
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* pkey; } ;
struct TYPE_7__ {int pubkey; } ;
struct TYPE_5__ {TYPE_3__* ecx; } ;
struct TYPE_6__ {TYPE_1__ pkey; } ;
typedef int EVP_MD_CTX ;
typedef TYPE_3__ ECX_KEY ;


 size_t ED448_SIGSIZE ;
 int ED448_verify (unsigned char const*,size_t,unsigned char const*,int ,int *,int ) ;
 TYPE_4__* EVP_MD_CTX_pkey_ctx (int *) ;

__attribute__((used)) static int pkey_ecd_digestverify448(EVP_MD_CTX *ctx, const unsigned char *sig,
                                    size_t siglen, const unsigned char *tbs,
                                    size_t tbslen)
{
    const ECX_KEY *edkey = EVP_MD_CTX_pkey_ctx(ctx)->pkey->pkey.ecx;

    if (siglen != ED448_SIGSIZE)
        return 0;

    return ED448_verify(tbs, tbslen, sig, edkey->pubkey, ((void*)0), 0);
}
