
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __sys_break (int *) ;
 uintptr_t curbrk ;
 int curbrk_initted ;
 uintptr_t minbrk ;

__attribute__((used)) static int
initbrk(void)
{
 void *newbrk;

 if (!curbrk_initted) {
  newbrk = __sys_break(((void*)0));
  if (newbrk == (void *)-1)
   return (-1);
  curbrk = minbrk = (uintptr_t)newbrk;
  curbrk_initted = 1;
 }
 return (0);
}
