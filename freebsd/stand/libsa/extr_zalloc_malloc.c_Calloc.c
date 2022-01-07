
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* Malloc (uintptr_t,char const*,int) ;
 scalar_t__ MallocCount ;
 scalar_t__ MallocMax ;
 int bzero (void*,uintptr_t) ;

void *
Calloc(size_t n1, size_t n2, const char *file, int line)
{
 uintptr_t bytes = (uintptr_t)n1 * (uintptr_t)n2;
 void *res;

 if ((res = Malloc(bytes, file, line)) != ((void*)0)) {
  bzero(res, bytes);




 }
 return (res);
}
