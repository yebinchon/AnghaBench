
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Free (void*,char const*,int) ;
 void* Realloc (void*,size_t,char const*,int) ;

void *
Reallocf(void *ptr, size_t size, const char *file, int line)
{
 void *res;

 if ((res = Realloc(ptr, size, file, line)) == ((void*)0))
  Free(ptr, file, line);
 return (res);
}
