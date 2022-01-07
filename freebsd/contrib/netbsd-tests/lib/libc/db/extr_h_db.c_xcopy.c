
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*,size_t) ;
 void* malloc (size_t) ;
 int memmove (void*,void*,size_t) ;

__attribute__((used)) static void *
xcopy(void *text, size_t len)
{
 void *p;

 if ((p = malloc(len)) == ((void*)0))
  err(1, "Cannot allocate %zu bytes", len);
 (void)memmove(p, text, len);
 return p;
}
