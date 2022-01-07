
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OSERR ;
 void* calloc (size_t,size_t) ;
 int err (int ,char*) ;

void *
safe_calloc(size_t number, size_t size)
{
 void *ret = calloc(number, size);

 if (ret == ((void*)0))
  err(EX_OSERR, "calloc");
 return ret;
}
