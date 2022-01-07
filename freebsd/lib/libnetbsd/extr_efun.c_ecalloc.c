
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (size_t,size_t) ;
 int efunc (int,char*,size_t,size_t) ;
 int stub1 (int,char*,size_t,size_t) ;

void *
ecalloc(size_t n, size_t s)
{
 void *p = calloc(n, s);
 if (p == ((void*)0) && n != 0 && s != 0)
  (*efunc)(1, "Cannot allocate %zu blocks of size %zu", n, s);
 return p;
}
