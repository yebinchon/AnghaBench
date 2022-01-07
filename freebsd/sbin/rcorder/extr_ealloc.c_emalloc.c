
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enomem () ;
 void* malloc (size_t) ;

void *
emalloc(size_t len)
{
 void *p;

 if ((p = malloc(len)) == ((void*)0))
  enomem();
 return(p);
}
