
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int UMA_SLAB_MASK ;
 int * vtoslab (int) ;

int
is_vmalloc_addr(const void *addr)
{
 return (vtoslab((vm_offset_t)addr & ~UMA_SLAB_MASK) != ((void*)0));
}
