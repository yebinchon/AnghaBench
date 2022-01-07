
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct thread {int dummy; } ;
typedef int pmap_t ;


 int pmap_activate_sw_pcid_pti (int ,int ,int) ;
 int pmap_activate_sw_pti_post (struct thread*,int ) ;

__attribute__((used)) static void
pmap_activate_sw_pcid_invpcid_pti(struct thread *td, pmap_t pmap, u_int cpuid)
{

 pmap_activate_sw_pcid_pti(pmap, cpuid, 1);
 pmap_activate_sw_pti_post(td, pmap);
}
