
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDERR_FILENO ;
 void* __crt_malloc (size_t) ;
 int _exit (int) ;
 int rtld_fdputstr (int ,char*) ;

void *
xmalloc(size_t size)
{

 void *p;

 p = __crt_malloc(size);
 if (p == ((void*)0)) {
  rtld_fdputstr(STDERR_FILENO, "Out of memory\n");
  _exit(1);
 }
 return (p);
}
