
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md5_sha1_ctx {int sha1; int md5; } ;
typedef int sha1tmp ;
typedef int padtmp ;
typedef int md5tmp ;
typedef int EVP_MD_CTX ;


 int EVP_CTRL_SSL3_MASTER_SECRET ;
 struct md5_sha1_ctx* EVP_MD_CTX_md_data (int *) ;
 int MD5_DIGEST_LENGTH ;
 int MD5_Final (unsigned char*,int *) ;
 int MD5_Update (int *,unsigned char*,int) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int SHA1_Final (unsigned char*,int *) ;
 int SHA1_Update (int *,unsigned char*,int) ;
 int SHA_DIGEST_LENGTH ;
 int init (int *) ;
 int memset (unsigned char*,int,int) ;
 scalar_t__ update (int *,void*,int) ;

__attribute__((used)) static int ctrl(EVP_MD_CTX *ctx, int cmd, int mslen, void *ms)
{
    unsigned char padtmp[48];
    unsigned char md5tmp[MD5_DIGEST_LENGTH];
    unsigned char sha1tmp[SHA_DIGEST_LENGTH];
    struct md5_sha1_ctx *mctx;

    if (cmd != EVP_CTRL_SSL3_MASTER_SECRET)
        return -2;

    if (ctx == ((void*)0))
        return 0;

    mctx = EVP_MD_CTX_md_data(ctx);


    if (mslen != 48)
        return 0;





    if (update(ctx, ms, mslen) <= 0)
        return 0;


    memset(padtmp, 0x36, sizeof(padtmp));

    if (!MD5_Update(&mctx->md5, padtmp, sizeof(padtmp)))
        return 0;

    if (!MD5_Final(md5tmp, &mctx->md5))
        return 0;

    if (!SHA1_Update(&mctx->sha1, padtmp, 40))
        return 0;

    if (!SHA1_Final(sha1tmp, &mctx->sha1))
        return 0;



    if (!init(ctx))
        return 0;

    if (update(ctx, ms, mslen) <= 0)
        return 0;


    memset(padtmp, 0x5c, sizeof(padtmp));

    if (!MD5_Update(&mctx->md5, padtmp, sizeof(padtmp)))
        return 0;

    if (!MD5_Update(&mctx->md5, md5tmp, sizeof(md5tmp)))
        return 0;

    if (!SHA1_Update(&mctx->sha1, padtmp, 40))
        return 0;

    if (!SHA1_Update(&mctx->sha1, sha1tmp, sizeof(sha1tmp)))
        return 0;



    OPENSSL_cleanse(md5tmp, sizeof(md5tmp));
    OPENSSL_cleanse(sha1tmp, sizeof(sha1tmp));

    return 1;

}
