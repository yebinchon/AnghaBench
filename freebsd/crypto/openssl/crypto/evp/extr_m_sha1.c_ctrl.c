
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sha1tmp ;
typedef int padtmp ;
typedef int SHA_CTX ;
typedef int EVP_MD_CTX ;


 int EVP_CTRL_SSL3_MASTER_SECRET ;
 int * EVP_MD_CTX_md_data (int *) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int SHA1_Final (unsigned char*,int *) ;
 int SHA1_Init (int *) ;
 scalar_t__ SHA1_Update (int *,unsigned char*,int) ;
 int SHA_DIGEST_LENGTH ;
 int memset (unsigned char*,int,int) ;

__attribute__((used)) static int ctrl(EVP_MD_CTX *ctx, int cmd, int mslen, void *ms)
{
    unsigned char padtmp[40];
    unsigned char sha1tmp[SHA_DIGEST_LENGTH];

    SHA_CTX *sha1;

    if (cmd != EVP_CTRL_SSL3_MASTER_SECRET)
        return -2;

    if (ctx == ((void*)0))
        return 0;

    sha1 = EVP_MD_CTX_md_data(ctx);


    if (mslen != 48)
        return 0;





    if (SHA1_Update(sha1, ms, mslen) <= 0)
        return 0;


    memset(padtmp, 0x36, sizeof(padtmp));

    if (!SHA1_Update(sha1, padtmp, sizeof(padtmp)))
        return 0;

    if (!SHA1_Final(sha1tmp, sha1))
        return 0;



    if (!SHA1_Init(sha1))
        return 0;

    if (SHA1_Update(sha1, ms, mslen) <= 0)
        return 0;


    memset(padtmp, 0x5c, sizeof(padtmp));

    if (!SHA1_Update(sha1, padtmp, sizeof(padtmp)))
        return 0;

    if (!SHA1_Update(sha1, sha1tmp, sizeof(sha1tmp)))
        return 0;


    OPENSSL_cleanse(sha1tmp, sizeof(sha1tmp));

    return 1;

}
