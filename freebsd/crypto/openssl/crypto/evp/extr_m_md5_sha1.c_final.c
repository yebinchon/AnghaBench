
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md5_sha1_ctx {int sha1; int md5; } ;
typedef int EVP_MD_CTX ;


 struct md5_sha1_ctx* EVP_MD_CTX_md_data (int *) ;
 int MD5_DIGEST_LENGTH ;
 int MD5_Final (unsigned char*,int *) ;
 int SHA1_Final (unsigned char*,int *) ;

__attribute__((used)) static int final(EVP_MD_CTX *ctx, unsigned char *md)
{
    struct md5_sha1_ctx *mctx = EVP_MD_CTX_md_data(ctx);
    if (!MD5_Final(md, &mctx->md5))
        return 0;
    return SHA1_Final(md + MD5_DIGEST_LENGTH, &mctx->sha1);
}
