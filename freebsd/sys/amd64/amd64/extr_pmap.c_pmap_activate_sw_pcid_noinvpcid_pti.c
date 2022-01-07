
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct thread {int dummy; } ;
typedef int register_t ;
typedef int pmap_t ;


 int intr_disable () ;
 int intr_restore (int ) ;
 int pmap_activate_sw_pcid_pti (int ,int ,int) ;
 int pmap_activate_sw_pti_post (struct thread*,int ) ;

__attribute__((used)) static void
pmap_activate_sw_pcid_noinvpcid_pti(struct thread *td, pmap_t pmap,
    u_int cpuid)
{
 register_t rflags;
 rflags = intr_disable();
 pmap_activate_sw_pcid_pti(pmap, cpuid, 0);
 intr_restore(rflags);
 pmap_activate_sw_pti_post(td, pmap);
}
