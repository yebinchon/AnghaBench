
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int (* compute_key ) (unsigned char**,size_t*,int const*,TYPE_2__ const*) ;} ;
typedef int EC_POINT ;
typedef TYPE_2__ EC_KEY ;


 int EC_F_ECDH_COMPUTE_KEY ;
 int EC_R_INVALID_OUTPUT_LENGTH ;
 int EC_R_OPERATION_NOT_SUPPORTED ;
 int ECerr (int ,int ) ;
 size_t INT_MAX ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 int memcpy (void*,unsigned char*,size_t) ;
 int stub1 (unsigned char**,size_t*,int const*,TYPE_2__ const*) ;

int ECDH_compute_key(void *out, size_t outlen, const EC_POINT *pub_key,
                     const EC_KEY *eckey,
                     void *(*KDF) (const void *in, size_t inlen, void *out,
                                   size_t *outlen))
{
    unsigned char *sec = ((void*)0);
    size_t seclen;
    if (eckey->meth->compute_key == ((void*)0)) {
        ECerr(EC_F_ECDH_COMPUTE_KEY, EC_R_OPERATION_NOT_SUPPORTED);
        return 0;
    }
    if (outlen > INT_MAX) {
        ECerr(EC_F_ECDH_COMPUTE_KEY, EC_R_INVALID_OUTPUT_LENGTH);
        return 0;
    }
    if (!eckey->meth->compute_key(&sec, &seclen, pub_key, eckey))
        return 0;
    if (KDF != ((void*)0)) {
        KDF(sec, seclen, out, &outlen);
    } else {
        if (outlen > seclen)
            outlen = seclen;
        memcpy(out, sec, outlen);
    }
    OPENSSL_clear_free(sec, seclen);
    return outlen;
}
