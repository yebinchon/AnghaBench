
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int efunc (int,char*,size_t) ;
 void* malloc (size_t) ;
 int stub1 (int,char*,size_t) ;

void *
emalloc(size_t n)
{
 void *p = malloc(n);
 if (p == ((void*)0) && n != 0)
  (*efunc)(1, "Cannot allocate %zu bytes", n);
 return p;
}
