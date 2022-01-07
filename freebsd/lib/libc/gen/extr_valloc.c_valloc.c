
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getpagesize () ;
 scalar_t__ posix_memalign (void**,int ,size_t) ;

void *
valloc(size_t i)
{
 void *ret;

 if (posix_memalign(&ret, getpagesize(), i) != 0)
  ret = ((void*)0);

 return ret;
}
