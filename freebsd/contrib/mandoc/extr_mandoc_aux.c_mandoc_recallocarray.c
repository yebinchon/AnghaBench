
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MANDOCLEVEL_SYSERR ;
 int err (int,int *) ;
 void* recallocarray (void*,size_t,size_t,size_t) ;

void *
mandoc_recallocarray(void *ptr, size_t oldnum, size_t num, size_t size)
{
 ptr = recallocarray(ptr, oldnum, num, size);
 if (ptr == ((void*)0))
  err((int)MANDOCLEVEL_SYSERR, ((void*)0));
 return ptr;
}
