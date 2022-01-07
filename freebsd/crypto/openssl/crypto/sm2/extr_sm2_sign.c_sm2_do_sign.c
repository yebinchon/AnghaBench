
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int EVP_MD ;
typedef int EC_KEY ;
typedef int ECDSA_SIG ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int * sm2_compute_msg_hash (int const*,int const*,int const*,size_t const,int const*,size_t) ;
 int * sm2_sig_gen (int const*,int *) ;

ECDSA_SIG *sm2_do_sign(const EC_KEY *key,
                       const EVP_MD *digest,
                       const uint8_t *id,
                       const size_t id_len,
                       const uint8_t *msg, size_t msg_len)
{
    BIGNUM *e = ((void*)0);
    ECDSA_SIG *sig = ((void*)0);

    e = sm2_compute_msg_hash(digest, key, id, id_len, msg, msg_len);
    if (e == ((void*)0)) {

        goto done;
    }

    sig = sm2_sig_gen(key, e);

 done:
    BN_free(e);
    return sig;
}
