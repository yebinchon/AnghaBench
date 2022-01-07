
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MANDOCLEVEL_SYSERR ;
 void* calloc (size_t,size_t) ;
 int err (int,int *) ;

void *
mandoc_calloc(size_t num, size_t size)
{
 void *ptr;

 ptr = calloc(num, size);
 if (ptr == ((void*)0))
  err((int)MANDOCLEVEL_SYSERR, ((void*)0));
 return ptr;
}
