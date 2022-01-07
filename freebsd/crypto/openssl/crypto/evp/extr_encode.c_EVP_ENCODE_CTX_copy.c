
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_ENCODE_CTX ;


 int memcpy (int *,int *,int) ;

int EVP_ENCODE_CTX_copy(EVP_ENCODE_CTX *dctx, EVP_ENCODE_CTX *sctx)
{
    memcpy(dctx, sctx, sizeof(EVP_ENCODE_CTX));

    return 1;
}
