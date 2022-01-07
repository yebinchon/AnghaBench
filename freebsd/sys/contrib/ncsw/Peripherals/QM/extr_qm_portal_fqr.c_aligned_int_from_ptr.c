
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t uint32_t ;


 int KASSERT (int,char*) ;
 uintptr_t VM_MIN_KERNEL_ADDRESS ;

__attribute__((used)) static inline uint32_t
aligned_int_from_ptr(const void *p)
{
 uintptr_t ctx;

 ctx = (uintptr_t)p;
 KASSERT(ctx >= VM_MIN_KERNEL_ADDRESS, ("%p is too low!\n", p));
 ctx -= VM_MIN_KERNEL_ADDRESS;
 KASSERT((ctx & 0x07) == 0, ("Pointer %p is not 8-byte aligned!\n", p));

 return (ctx >> 3);
}
