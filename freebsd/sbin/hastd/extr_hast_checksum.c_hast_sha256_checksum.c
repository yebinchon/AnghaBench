
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA256_CTX ;


 size_t SHA256_DIGEST_LENGTH ;
 int SHA256_Final (unsigned char*,int *) ;
 int SHA256_Init (int *) ;
 int SHA256_Update (int *,unsigned char const*,size_t) ;

__attribute__((used)) static void
hast_sha256_checksum(const unsigned char *data, size_t size,
    unsigned char *hash, size_t *hsizep)
{
 SHA256_CTX ctx;

 SHA256_Init(&ctx);
 SHA256_Update(&ctx, data, size);
 SHA256_Final(hash, &ctx);
 *hsizep = SHA256_DIGEST_LENGTH;
}
