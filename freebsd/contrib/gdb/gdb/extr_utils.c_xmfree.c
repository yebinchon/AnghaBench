
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mfree (void*,void*) ;

void
xmfree (void *md, void *ptr)
{
  if (ptr != ((void*)0))
    mfree (md, ptr);
}
