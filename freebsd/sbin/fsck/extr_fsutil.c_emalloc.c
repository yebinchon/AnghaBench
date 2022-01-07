
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 void* malloc (size_t) ;

void *
emalloc(size_t s)
{
 void *p;

 p = malloc(s);
 if (p == ((void*)0))
  err(1, "malloc failed");
 return (p);
}
