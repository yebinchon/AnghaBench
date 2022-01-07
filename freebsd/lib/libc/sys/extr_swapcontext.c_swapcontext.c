
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucontext_t ;


 size_t INTERPOS_swapcontext ;
 scalar_t__* __libc_interposing ;
 int stub1 (int *,int const*) ;

int
swapcontext(ucontext_t *oucp, const ucontext_t *ucp)
{

 return (((int (*)(ucontext_t *, const ucontext_t *))
     __libc_interposing[INTERPOS_swapcontext])(oucp, ucp));
}
