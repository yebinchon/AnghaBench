
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_sha256_CTX ;


 int ldns_sha256_final (unsigned char*,int *) ;
 int ldns_sha256_init (int *) ;
 int ldns_sha256_update (int *,unsigned char*,unsigned int) ;

unsigned char *
ldns_sha256(unsigned char *data, unsigned int data_len, unsigned char *digest)
{
    ldns_sha256_CTX ctx;
    ldns_sha256_init(&ctx);
    ldns_sha256_update(&ctx, data, data_len);
    ldns_sha256_final(digest, &ctx);
    return digest;
}
