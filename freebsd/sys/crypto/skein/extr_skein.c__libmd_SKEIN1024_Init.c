
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SKEIN1024_CTX ;


 int Skein1024_Init (int *,int) ;

void
SKEIN1024_Init(SKEIN1024_CTX * ctx)
{

 Skein1024_Init(ctx, 1024);
}
