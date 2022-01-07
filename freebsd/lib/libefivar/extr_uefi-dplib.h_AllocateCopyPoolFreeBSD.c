
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;
 int memcpy (void*,void const*,size_t) ;

__attribute__((used)) static inline void *
AllocateCopyPool(size_t l, const void *p)
{
 void *rv;

 rv = malloc(l);
 if (rv == ((void*)0))
  return ((void*)0);
 memcpy(rv, p, l);
 return (rv);
}
