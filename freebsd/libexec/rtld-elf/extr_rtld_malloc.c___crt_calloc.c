
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __crt_malloc (size_t) ;
 int memset (void*,int ,size_t) ;

void *
__crt_calloc(size_t num, size_t size)
{
 void *ret;

 if (size != 0 && (num * size) / size != num) {

  return (((void*)0));
 }

 if ((ret = __crt_malloc(num * size)) != ((void*)0))
  memset(ret, 0, num * size);

 return (ret);
}
