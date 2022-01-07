
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int EVP_MD_CTX_md_data (int *) ;
 int SHA224_Update (int ,void const*,size_t) ;

__attribute__((used)) static int update224(EVP_MD_CTX *ctx, const void *data, size_t count)
{
    return SHA224_Update(EVP_MD_CTX_md_data(ctx), data, count);
}
