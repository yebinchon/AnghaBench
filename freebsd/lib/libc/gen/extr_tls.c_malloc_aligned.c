
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __je_bootstrap_malloc (int) ;
 scalar_t__ roundup2 (int,size_t) ;

__attribute__((used)) static void *
malloc_aligned(size_t size, size_t align)
{
 void *mem, *res;

 if (align < sizeof(void *))
  align = sizeof(void *);

 mem = __je_bootstrap_malloc(size + sizeof(void *) + align - 1);
 res = (void *)roundup2((uintptr_t)mem + sizeof(void *), align);
 *(void **)((uintptr_t)res - sizeof(void *)) = mem;
 return (res);
}
