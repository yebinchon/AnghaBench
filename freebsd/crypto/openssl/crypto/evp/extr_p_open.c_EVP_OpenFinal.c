
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;


 int EVP_DecryptFinal_ex (int *,unsigned char*,int*) ;
 int EVP_DecryptInit_ex (int *,int *,int *,int *,int *) ;

int EVP_OpenFinal(EVP_CIPHER_CTX *ctx, unsigned char *out, int *outl)
{
    int i;

    i = EVP_DecryptFinal_ex(ctx, out, outl);
    if (i)
        i = EVP_DecryptInit_ex(ctx, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    return i;
}
