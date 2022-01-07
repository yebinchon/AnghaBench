
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t uint32_t ;


 uintptr_t VM_MIN_KERNEL_ADDRESS ;

__attribute__((used)) static inline void *
ptr_from_aligned_int(uint32_t ctx)
{
 uintptr_t p;

 p = ctx;
 p = VM_MIN_KERNEL_ADDRESS + (p << 3);

 return ((void *)p);
}
