
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ flushentry () ;
 void* malloc (size_t) ;

__attribute__((used)) static inline void*
Malloc(size_t size)
{
 void *retval;

 while ((retval = malloc(size)) == ((void*)0))
  if (flushentry() == 0)
   break;
 return (retval);
}
