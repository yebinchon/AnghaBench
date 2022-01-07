
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SKEIN512_CTX ;


 int Skein_512_Init (int *,int) ;

void
SKEIN512_Init(SKEIN512_CTX * ctx)
{

 Skein_512_Init(ctx, 512);
}
