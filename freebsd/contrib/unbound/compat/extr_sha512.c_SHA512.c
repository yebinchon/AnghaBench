
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA512_CTX ;


 int SHA512_Final (unsigned char*,int *) ;
 int SHA512_Init (int *) ;
 int SHA512_Update (int *,void*,unsigned int) ;

unsigned char *
SHA512(void *data, unsigned int data_len, unsigned char *digest)
{
    SHA512_CTX ctx;
    SHA512_Init(&ctx);
    SHA512_Update(&ctx, data, data_len);
    SHA512_Final(digest, &ctx);
    return digest;
}
