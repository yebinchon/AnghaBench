
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t INTERPOS_msync ;
 scalar_t__* __libc_interposing ;
 int stub1 (void*,size_t,int) ;

int
msync(void *addr, size_t len, int flags)
{

 return (((int (*)(void *, size_t, int))
     __libc_interposing[INTERPOS_msync])(addr, len, flags));
}
