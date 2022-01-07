
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SKEIN256_CTX ;


 int Skein_256_Update (int *,void const*,size_t) ;

void
SKEIN256_Update(SKEIN256_CTX * ctx, const void *in, size_t len)
{

 Skein_256_Update(ctx, in, len);
}
