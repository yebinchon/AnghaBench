
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int c448_error_t ;
typedef int EVP_MD_CTX ;


 int C448_FAILURE ;
 int C448_SUCCESS ;
 int EVP_DigestFinalXOF (int *,int *,size_t) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,int const*,size_t) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_shake256 () ;

__attribute__((used)) static c448_error_t oneshot_hash(uint8_t *out, size_t outlen,
                                 const uint8_t *in, size_t inlen)
{
    EVP_MD_CTX *hashctx = EVP_MD_CTX_new();

    if (hashctx == ((void*)0))
        return C448_FAILURE;

    if (!EVP_DigestInit_ex(hashctx, EVP_shake256(), ((void*)0))
            || !EVP_DigestUpdate(hashctx, in, inlen)
            || !EVP_DigestFinalXOF(hashctx, out, outlen)) {
        EVP_MD_CTX_free(hashctx);
        return C448_FAILURE;
    }

    EVP_MD_CTX_free(hashctx);
    return C448_SUCCESS;
}
