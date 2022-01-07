
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OSERR ;
 int err (int ,char*) ;
 void* realloc (void*,size_t) ;

void *
safe_realloc(void *ptr, size_t size)
{
 void *ret = realloc(ptr, size);

 if (ret == ((void*)0))
  err(EX_OSERR, "realloc");
 return ret;
}
