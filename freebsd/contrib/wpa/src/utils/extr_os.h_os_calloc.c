
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* os_zalloc (size_t) ;

__attribute__((used)) static inline void * os_calloc(size_t nmemb, size_t size)
{
 if (size && nmemb > (~(size_t) 0) / size)
  return ((void*)0);
 return os_zalloc(nmemb * size);
}
