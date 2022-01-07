
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_EncodeBlock (unsigned char*,unsigned char*,unsigned int) ;
 int EVP_PKEY_size (int *) ;
 scalar_t__ EVP_SignFinal (int *,unsigned char*,unsigned int*,int *) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int ) ;
 int PEM_F_PEM_SIGNFINAL ;
 int PEMerr (int ,int ) ;

int PEM_SignFinal(EVP_MD_CTX *ctx, unsigned char *sigret,
                  unsigned int *siglen, EVP_PKEY *pkey)
{
    unsigned char *m;
    int i, ret = 0;
    unsigned int m_len;

    m = OPENSSL_malloc(EVP_PKEY_size(pkey));
    if (m == ((void*)0)) {
        PEMerr(PEM_F_PEM_SIGNFINAL, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (EVP_SignFinal(ctx, m, &m_len, pkey) <= 0)
        goto err;

    i = EVP_EncodeBlock(sigret, m, m_len);
    *siglen = i;
    ret = 1;
 err:

    OPENSSL_free(m);
    return ret;
}
