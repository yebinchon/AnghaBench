
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmfree (int *,void*) ;

void
xfree (void *ptr)
{
  xmfree (((void*)0), ptr);
}
