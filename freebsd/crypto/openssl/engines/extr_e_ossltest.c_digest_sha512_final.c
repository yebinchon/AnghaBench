
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int SHA512_DIGEST_LENGTH ;
 int SHA512_Final (unsigned char*,int ) ;
 int data (int *) ;
 int fill_known_data (unsigned char*,int ) ;

__attribute__((used)) static int digest_sha512_final(EVP_MD_CTX *ctx, unsigned char *md)
{
    int ret;
    ret = SHA512_Final(md, data(ctx));

    if (ret > 0) {
        fill_known_data(md, SHA512_DIGEST_LENGTH);
    }
    return ret;
}
