
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_sha512_CTX ;


 int ldns_sha512_final (unsigned char*,int *) ;
 int ldns_sha512_init (int *) ;
 int ldns_sha512_update (int *,unsigned char*,unsigned int) ;

unsigned char *
ldns_sha512(unsigned char *data, unsigned int data_len, unsigned char *digest)
{
    ldns_sha512_CTX ctx;
    ldns_sha512_init(&ctx);
    ldns_sha512_update(&ctx, data, data_len);
    ldns_sha512_final(digest, &ctx);
    return digest;
}
