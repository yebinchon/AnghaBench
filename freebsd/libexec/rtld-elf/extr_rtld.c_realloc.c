
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __crt_realloc (void*,size_t) ;

void *
realloc(void *cp, size_t nbytes)
{

 return (__crt_realloc(cp, nbytes));
}
