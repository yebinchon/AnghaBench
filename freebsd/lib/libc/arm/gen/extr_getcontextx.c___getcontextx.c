
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucontext_t ;


 int __fillcontextx (char*) ;
 int __getcontextx_size () ;
 int errno ;
 int free (char*) ;
 char* malloc (int ) ;

ucontext_t *
__getcontextx(void)
{
 char *ctx;
 int error;

 ctx = malloc(__getcontextx_size());
 if (ctx == ((void*)0))
  return (((void*)0));
 if (__fillcontextx(ctx) == -1) {
  error = errno;
  free(ctx);
  errno = error;
  return (((void*)0));
 }
 return ((ucontext_t *)ctx);
}
