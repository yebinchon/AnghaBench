
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 void* __sys_break (void*) ;
 uintptr_t curbrk ;
 int errno ;
 uintptr_t minbrk ;

__attribute__((used)) static void *
mvbrk(void *addr)
{
 uintptr_t oldbrk;

 if ((uintptr_t)addr < minbrk) {

  errno = EINVAL;
  return ((void *)-1);
 }
 if (__sys_break(addr) == (void *)-1)
  return ((void *)-1);
 oldbrk = curbrk;
 curbrk = (uintptr_t)addr;
 return ((void *)oldbrk);
}
