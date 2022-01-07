
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __crt_malloc (size_t) ;

void *
malloc(size_t nbytes)
{

 return (__crt_malloc(nbytes));
}
