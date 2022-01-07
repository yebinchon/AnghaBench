
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA512_CTX ;


 int SHA512_Update (int *,void const*,size_t) ;

void
SHA512_256_Update(SHA512_CTX * ctx, const void *in, size_t len)
{

 SHA512_Update(ctx, in, len);
}
