
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int EVP_DigestInit_ex (int *,int *,int *) ;

int PEM_SignInit(EVP_MD_CTX *ctx, EVP_MD *type)
{
    return EVP_DigestInit_ex(ctx, type, ((void*)0));
}
