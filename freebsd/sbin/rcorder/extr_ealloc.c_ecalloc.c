
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (size_t,size_t) ;
 int enomem () ;

void *
ecalloc(size_t nmemb, size_t size)
{
 void *ptr;

 if ((ptr = calloc(nmemb, size)) == ((void*)0))
  enomem();
 return(ptr);
}
