
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucontext_t ;


 int getcontext (int *) ;

int
__fillcontextx(char *ctx)
{
 ucontext_t *ucp;

 ucp = (ucontext_t *)ctx;
 return (getcontext(ucp));
}
