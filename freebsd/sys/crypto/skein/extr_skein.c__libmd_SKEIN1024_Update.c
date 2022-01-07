
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SKEIN1024_CTX ;


 int Skein1024_Update (int *,void const*,size_t) ;

void
SKEIN1024_Update(SKEIN1024_CTX * ctx, const void *in, size_t len)
{

 Skein1024_Update(ctx, in, len);
}
