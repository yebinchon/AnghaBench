
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __je_bootstrap_free (void*) ;

__attribute__((used)) static void
free_aligned(void *ptr)
{
 void *mem;
 uintptr_t x;

 if (ptr == ((void*)0))
  return;

 x = (uintptr_t)ptr;
 x -= sizeof(void *);
 mem = *(void **)x;
 __je_bootstrap_free(mem);
}
