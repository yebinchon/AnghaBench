
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __crt_calloc (size_t,size_t) ;

void *
calloc(size_t num, size_t size)
{

 return (__crt_calloc(num, size));
}
