
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MANDOCLEVEL_SYSERR ;
 int err (int,int *) ;
 void* malloc (size_t) ;

void *
mandoc_malloc(size_t size)
{
 void *ptr;

 ptr = malloc(size);
 if (ptr == ((void*)0))
  err((int)MANDOCLEVEL_SYSERR, ((void*)0));
 return ptr;
}
