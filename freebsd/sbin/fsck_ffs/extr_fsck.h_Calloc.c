
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (size_t,size_t) ;
 scalar_t__ flushentry () ;

__attribute__((used)) static inline void*
Calloc(size_t cnt, size_t size)
{
 void *retval;

 while ((retval = calloc(cnt, size)) == ((void*)0))
  if (flushentry() == 0)
   break;
 return (retval);
}
