
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH ;


 int DH_free (int *) ;

void dh5_free(void *ctx)
{
 DH *dh;
 if (ctx == ((void*)0))
  return;
 dh = ctx;
 DH_free(dh);
}
