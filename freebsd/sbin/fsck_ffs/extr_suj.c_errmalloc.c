
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OSERR ;
 void* Malloc (size_t) ;
 int err (int ,char*,size_t) ;

__attribute__((used)) static void *
errmalloc(size_t n)
{
 void *a;

 a = Malloc(n);
 if (a == ((void*)0))
  err(EX_OSERR, "malloc(%zu)", n);
 return (a);
}
