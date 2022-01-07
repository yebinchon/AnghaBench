
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_F_EVP_PBE_SCRYPT ;
 int EVP_R_MEMORY_LIMIT_EXCEEDED ;
 int EVP_R_PBKDF2_ERROR ;
 int EVP_sha256 () ;
 int EVPerr (int ,int ) ;
 int INT_MAX ;
 int LOG2_UINT64_MAX ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 scalar_t__ PKCS5_PBKDF2_HMAC (char const*,size_t,unsigned char const*,int,int,int ,size_t,unsigned char*) ;
 int SCRYPT_MAX_MEM ;
 int SCRYPT_PR_MAX ;
 int SIZE_MAX ;
 int UINT64_MAX ;
 int scryptROMix (unsigned char*,int,int,int *,int *,int *) ;

int EVP_PBE_scrypt(const char *pass, size_t passlen,
                   const unsigned char *salt, size_t saltlen,
                   uint64_t N, uint64_t r, uint64_t p, uint64_t maxmem,
                   unsigned char *key, size_t keylen)
{
    int rv = 0;
    unsigned char *B;
    uint32_t *X, *V, *T;
    uint64_t i, Blen, Vlen;



    if (r == 0 || p == 0 || N < 2 || (N & (N - 1)))
        return 0;

    if (p > SCRYPT_PR_MAX / r) {
        EVPerr(EVP_F_EVP_PBE_SCRYPT, EVP_R_MEMORY_LIMIT_EXCEEDED);
        return 0;
    }






    if (16 * r <= LOG2_UINT64_MAX) {
        if (N >= (((uint64_t)1) << (16 * r))) {
            EVPerr(EVP_F_EVP_PBE_SCRYPT, EVP_R_MEMORY_LIMIT_EXCEEDED);
            return 0;
        }
    }
    Blen = p * 128 * r;




    if (Blen > INT_MAX) {
        EVPerr(EVP_F_EVP_PBE_SCRYPT, EVP_R_MEMORY_LIMIT_EXCEEDED);
        return 0;
    }





    i = UINT64_MAX / (32 * sizeof(uint32_t));
    if (N + 2 > i / r) {
        EVPerr(EVP_F_EVP_PBE_SCRYPT, EVP_R_MEMORY_LIMIT_EXCEEDED);
        return 0;
    }
    Vlen = 32 * r * (N + 2) * sizeof(uint32_t);


    if (Blen > UINT64_MAX - Vlen) {
        EVPerr(EVP_F_EVP_PBE_SCRYPT, EVP_R_MEMORY_LIMIT_EXCEEDED);
        return 0;
    }

    if (maxmem == 0)
        maxmem = SCRYPT_MAX_MEM;


    if (maxmem > SIZE_MAX)
        maxmem = SIZE_MAX;

    if (Blen + Vlen > maxmem) {
        EVPerr(EVP_F_EVP_PBE_SCRYPT, EVP_R_MEMORY_LIMIT_EXCEEDED);
        return 0;
    }


    if (key == ((void*)0))
        return 1;

    B = OPENSSL_malloc((size_t)(Blen + Vlen));
    if (B == ((void*)0)) {
        EVPerr(EVP_F_EVP_PBE_SCRYPT, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    X = (uint32_t *)(B + Blen);
    T = X + 32 * r;
    V = T + 32 * r;
    if (PKCS5_PBKDF2_HMAC(pass, passlen, salt, saltlen, 1, EVP_sha256(),
                          (int)Blen, B) == 0)
        goto err;

    for (i = 0; i < p; i++)
        scryptROMix(B + 128 * r * i, r, N, X, T, V);

    if (PKCS5_PBKDF2_HMAC(pass, passlen, B, (int)Blen, 1, EVP_sha256(),
                          keylen, key) == 0)
        goto err;
    rv = 1;
 err:
    if (rv == 0)
        EVPerr(EVP_F_EVP_PBE_SCRYPT, EVP_R_PBKDF2_ERROR);

    OPENSSL_clear_free(B, (size_t)(Blen + Vlen));
    return rv;
}
