
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*) ;
 void* realloc (void*,size_t) ;

void *
xrealloc(void *p, size_t n)
{
 p = realloc(p, n);

 if (p == ((void*)0))
  errx(1, "Could not allocate memory");

 return p;
}
