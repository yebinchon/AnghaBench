
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfp ;
struct thread {int dummy; } ;
typedef int mcontext_vfp_t ;


 int NT_ARM_VFP ;
 size_t elf32_populate_note (int ,int *,void*,int,int *) ;
 int get_vfpcontext (struct thread*,int *) ;

void
elf32_dump_thread(struct thread *td, void *dst, size_t *off)
{
}
