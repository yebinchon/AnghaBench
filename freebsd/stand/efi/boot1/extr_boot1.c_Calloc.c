
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* Malloc (size_t,char const*,int) ;
 int bzero (void*,size_t) ;

void *
Calloc(size_t n1, size_t n2, const char *file, int line)
{
 size_t bytes;
 void *res;

 bytes = n1 * n2;
 if ((res = Malloc(bytes, file, line)) != ((void*)0))
  bzero(res, bytes);

 return (res);
}
