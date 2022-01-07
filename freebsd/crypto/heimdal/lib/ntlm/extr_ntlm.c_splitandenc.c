
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key ;
typedef int EVP_CIPHER_CTX ;


 int ENOMEM ;
 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_Cipher (int *,unsigned char*,unsigned char*,int) ;
 int EVP_CipherInit_ex (int *,int ,int *,unsigned char*,int *,int) ;
 int EVP_des_cbc () ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int
splitandenc(unsigned char *hash,
     unsigned char *challenge,
     unsigned char *answer)
{
    EVP_CIPHER_CTX *ctx;
    unsigned char key[8];

    key[0] = hash[0];
    key[1] = (hash[0] << 7) | (hash[1] >> 1);
    key[2] = (hash[1] << 6) | (hash[2] >> 2);
    key[3] = (hash[2] << 5) | (hash[3] >> 3);
    key[4] = (hash[3] << 4) | (hash[4] >> 4);
    key[5] = (hash[4] << 3) | (hash[5] >> 5);
    key[6] = (hash[5] << 2) | (hash[6] >> 6);
    key[7] = (hash[6] << 1);

    ctx = EVP_CIPHER_CTX_new();
    if (ctx == ((void*)0))
 return ENOMEM;

    EVP_CipherInit_ex(ctx, EVP_des_cbc(), ((void*)0), key, ((void*)0), 1);
    EVP_Cipher(ctx, answer, challenge, 8);
    EVP_CIPHER_CTX_free(ctx);
    memset(key, 0, sizeof(key));
    return 0;
}
