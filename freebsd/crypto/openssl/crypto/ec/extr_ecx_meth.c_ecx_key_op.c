
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ecx_key_op_t ;
typedef int X509_ALGOR ;
struct TYPE_5__ {unsigned char* pubkey; unsigned char* privkey; } ;
typedef int EVP_PKEY ;
typedef TYPE_1__ ECX_KEY ;


 int EC_F_ECX_KEY_OP ;
 int EC_R_INVALID_ENCODING ;
 int ECerr (int ,int ) ;
 int ED25519_public_from_private (unsigned char*,unsigned char*) ;
 int ED448_public_from_private (unsigned char*,unsigned char*) ;
 int ERR_R_MALLOC_FAILURE ;




 int EVP_PKEY_assign (int *,int,TYPE_1__*) ;
 int KEYLENID (int) ;
 scalar_t__ KEY_OP_KEYGEN ;
 scalar_t__ KEY_OP_PUBLIC ;
 int OPENSSL_free (TYPE_1__*) ;
 int OPENSSL_secure_free (unsigned char*) ;
 unsigned char* OPENSSL_secure_malloc (int) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 scalar_t__ RAND_priv_bytes (unsigned char*,int) ;
 int V_ASN1_UNDEF ;
 int X25519_KEYLEN ;
 int X25519_public_from_private (unsigned char*,unsigned char*) ;
 int X448_KEYLEN ;
 int X448_public_from_private (unsigned char*,unsigned char*) ;
 int X509_ALGOR_get0 (int *,int*,int *,int const*) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

__attribute__((used)) static int ecx_key_op(EVP_PKEY *pkey, int id, const X509_ALGOR *palg,
                      const unsigned char *p, int plen, ecx_key_op_t op)
{
    ECX_KEY *key = ((void*)0);
    unsigned char *privkey, *pubkey;

    if (op != KEY_OP_KEYGEN) {
        if (palg != ((void*)0)) {
            int ptype;


            X509_ALGOR_get0(((void*)0), &ptype, ((void*)0), palg);
            if (ptype != V_ASN1_UNDEF) {
                ECerr(EC_F_ECX_KEY_OP, EC_R_INVALID_ENCODING);
                return 0;
            }
        }

        if (p == ((void*)0) || plen != KEYLENID(id)) {
            ECerr(EC_F_ECX_KEY_OP, EC_R_INVALID_ENCODING);
            return 0;
        }
    }

    key = OPENSSL_zalloc(sizeof(*key));
    if (key == ((void*)0)) {
        ECerr(EC_F_ECX_KEY_OP, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    pubkey = key->pubkey;

    if (op == KEY_OP_PUBLIC) {
        memcpy(pubkey, p, plen);
    } else {
        privkey = key->privkey = OPENSSL_secure_malloc(KEYLENID(id));
        if (privkey == ((void*)0)) {
            ECerr(EC_F_ECX_KEY_OP, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        if (op == KEY_OP_KEYGEN) {
            if (RAND_priv_bytes(privkey, KEYLENID(id)) <= 0) {
                OPENSSL_secure_free(privkey);
                key->privkey = ((void*)0);
                goto err;
            }
            if (id == 129) {
                privkey[0] &= 248;
                privkey[X25519_KEYLEN - 1] &= 127;
                privkey[X25519_KEYLEN - 1] |= 64;
            } else if (id == 128) {
                privkey[0] &= 252;
                privkey[X448_KEYLEN - 1] |= 128;
            }
        } else {
            memcpy(privkey, p, KEYLENID(id));
        }
        switch (id) {
        case 129:
            X25519_public_from_private(pubkey, privkey);
            break;
        case 131:
            ED25519_public_from_private(pubkey, privkey);
            break;
        case 128:
            X448_public_from_private(pubkey, privkey);
            break;
        case 130:
            ED448_public_from_private(pubkey, privkey);
            break;
        }
    }

    EVP_PKEY_assign(pkey, id, key);
    return 1;
 err:
    OPENSSL_free(key);
    return 0;
}
