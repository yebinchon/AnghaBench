
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA256_CTX ;
typedef int SHA224_CTX ;


 int SHA256_Update (int *,void const*,size_t) ;

void
SHA224_Update(SHA224_CTX * ctx, const void *in, size_t len)
{

 SHA256_Update((SHA256_CTX *)ctx, in, len);
}
