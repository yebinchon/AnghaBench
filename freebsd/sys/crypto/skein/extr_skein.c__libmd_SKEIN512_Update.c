
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SKEIN512_CTX ;


 int Skein_512_Update (int *,void const*,size_t) ;

void
SKEIN512_Update(SKEIN512_CTX * ctx, const void *in, size_t len)
{

 Skein_512_Update(ctx, in, len);
}
