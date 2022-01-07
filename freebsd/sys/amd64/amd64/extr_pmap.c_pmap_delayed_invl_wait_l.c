
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ u_long ;


 int atomic_add_long (int *,int) ;
 int invl_wait ;
 scalar_t__* pmap_delayed_invl_genp (int ) ;
 int pmap_delayed_invl_wait_block (scalar_t__*,scalar_t__*) ;
 scalar_t__ pmap_invl_gen ;

__attribute__((used)) static void
pmap_delayed_invl_wait_l(vm_page_t m)
{
 u_long *m_gen;




 m_gen = pmap_delayed_invl_genp(m);
 while (*m_gen > pmap_invl_gen) {






  pmap_delayed_invl_wait_block(m_gen, &pmap_invl_gen);
 }
}
