
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int efunc (int,char*,size_t) ;
 void* realloc (void*,size_t) ;
 int stub1 (int,char*,size_t) ;

void *
erealloc(void *p, size_t n)
{
 void *q = realloc(p, n);
 if (q == ((void*)0) && n != 0)
  (*efunc)(1, "Cannot re-allocate %zu bytes", n);
 return q;
}
