
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int BLAKE2b_Final (unsigned char*,int ) ;
 int EVP_MD_CTX_md_data (int *) ;

__attribute__((used)) static int final(EVP_MD_CTX *ctx, unsigned char *md)
{
    return BLAKE2b_Final(md, EVP_MD_CTX_md_data(ctx));
}
