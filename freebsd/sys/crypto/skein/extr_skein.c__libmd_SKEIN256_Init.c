
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SKEIN256_CTX ;


 int Skein_256_Init (int *,int) ;

void
SKEIN256_Init(SKEIN256_CTX * ctx)
{

 Skein_256_Init(ctx, 256);
}
