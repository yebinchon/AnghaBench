
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t uint64_t ;
struct pmap_invl_gen {uintptr_t gen; scalar_t__ next; } ;



__attribute__((used)) static bool
pmap_di_store_invl(struct pmap_invl_gen *ptr, struct pmap_invl_gen *old_val,
    struct pmap_invl_gen *new_val)
{
 uint64_t new_high, new_low, old_high, old_low;
 char res;

 new_low = new_val->gen;
 new_high = (uintptr_t)new_val->next;
 old_low = old_val->gen;
 old_high = (uintptr_t)old_val->next;

 __asm volatile("lock;cmpxchg16b\t%1;sete\t%0"
     : "=r" (res), "+m" (*ptr), "+a" (old_low), "+d" (old_high)
     : "b"(new_low), "c" (new_high)
     : "memory", "cc");
 return (res);
}
