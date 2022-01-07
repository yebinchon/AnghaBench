
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md5_sha1_ctx {int sha1; int md5; } ;
typedef int EVP_MD_CTX ;


 struct md5_sha1_ctx* EVP_MD_CTX_md_data (int *) ;
 int MD5_Update (int *,void const*,size_t) ;
 int SHA1_Update (int *,void const*,size_t) ;

__attribute__((used)) static int update(EVP_MD_CTX *ctx, const void *data, size_t count)
{
    struct md5_sha1_ctx *mctx = EVP_MD_CTX_md_data(ctx);
    if (!MD5_Update(&mctx->md5, data, count))
        return 0;
    return SHA1_Update(&mctx->sha1, data, count);
}
