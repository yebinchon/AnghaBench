
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* pkey; } ;
struct TYPE_7__ {int privkey; int pubkey; } ;
struct TYPE_5__ {TYPE_3__* ecx; } ;
struct TYPE_6__ {TYPE_1__ pkey; } ;
typedef int EVP_MD_CTX ;
typedef TYPE_3__ ECX_KEY ;


 int EC_F_PKEY_ECD_DIGESTSIGN448 ;
 int EC_R_BUFFER_TOO_SMALL ;
 int ECerr (int ,int ) ;
 size_t ED448_SIGSIZE ;
 scalar_t__ ED448_sign (unsigned char*,unsigned char const*,size_t,int ,int ,int *,int ) ;
 TYPE_4__* EVP_MD_CTX_pkey_ctx (int *) ;

__attribute__((used)) static int pkey_ecd_digestsign448(EVP_MD_CTX *ctx, unsigned char *sig,
                                  size_t *siglen, const unsigned char *tbs,
                                  size_t tbslen)
{
    const ECX_KEY *edkey = EVP_MD_CTX_pkey_ctx(ctx)->pkey->pkey.ecx;

    if (sig == ((void*)0)) {
        *siglen = ED448_SIGSIZE;
        return 1;
    }
    if (*siglen < ED448_SIGSIZE) {
        ECerr(EC_F_PKEY_ECD_DIGESTSIGN448, EC_R_BUFFER_TOO_SMALL);
        return 0;
    }

    if (ED448_sign(sig, tbs, tbslen, edkey->pubkey, edkey->privkey, ((void*)0),
                   0) == 0)
        return 0;
    *siglen = ED448_SIGSIZE;
    return 1;
}
