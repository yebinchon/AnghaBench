
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucontext_t ;


 size_t INTERPOS_setcontext ;
 scalar_t__* __libc_interposing ;
 int stub1 (int const*) ;

int
setcontext(const ucontext_t *uc)
{

 return (((int (*)(const ucontext_t *))
     __libc_interposing[INTERPOS_setcontext])(uc));
}
