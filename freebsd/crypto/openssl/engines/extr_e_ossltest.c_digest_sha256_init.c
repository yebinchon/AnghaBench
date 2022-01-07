
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int SHA256_Init (int ) ;
 int data (int *) ;

__attribute__((used)) static int digest_sha256_init(EVP_MD_CTX *ctx)
{
    return SHA256_Init(data(ctx));
}
