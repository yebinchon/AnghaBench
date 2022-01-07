
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 void* realloc (void*,size_t) ;

void *
erealloc(void *p, size_t s)
{
 void *q;

 q = realloc(p, s);
 if (q == ((void*)0))
  err(1, "realloc failed");
 return (q);
}
