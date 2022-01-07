
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_page_t ;
typedef scalar_t__ u_long ;
struct lock_delay_arg {int dummy; } ;
struct TYPE_2__ {int gen; } ;


 int PV_STAT (int ) ;
 int atomic_add_int (int *,int) ;
 int atomic_add_long (int *,int) ;
 scalar_t__ atomic_load_long (int *) ;
 int callout_reset (int *,int,int ,int *) ;
 int di_delay ;
 int invl_wait ;
 int invl_wait_slow ;
 int lock_delay (struct lock_delay_arg*) ;
 int lock_delay_arg_init (struct lock_delay_arg*,int *) ;
 int pmap_delayed_invl_callout_func ;
 scalar_t__* pmap_delayed_invl_genp (int ) ;
 int pmap_delayed_invl_wait_block (scalar_t__*,int *) ;
 int pmap_invl_callout ;
 int pmap_invl_callout_inited ;
 TYPE_1__ pmap_invl_gen_head ;
 int pmap_invl_waiters ;

__attribute__((used)) static void
pmap_delayed_invl_wait_u(vm_page_t m)
{
 u_long *m_gen;
 struct lock_delay_arg lda;
 bool fast;

 fast = 1;
 m_gen = pmap_delayed_invl_genp(m);
 lock_delay_arg_init(&lda, &di_delay);
 while (*m_gen > atomic_load_long(&pmap_invl_gen_head.gen)) {
  if (fast || !pmap_invl_callout_inited) {
   PV_STAT(atomic_add_long(&invl_wait, 1));
   lock_delay(&lda);
   fast = 0;
  } else {
   atomic_add_int(&pmap_invl_waiters, 1);
   if (*m_gen >
       atomic_load_long(&pmap_invl_gen_head.gen)) {
    callout_reset(&pmap_invl_callout, 1,
        pmap_delayed_invl_callout_func, ((void*)0));
    PV_STAT(atomic_add_long(&invl_wait_slow, 1));
    pmap_delayed_invl_wait_block(m_gen,
        &pmap_invl_gen_head.gen);
   }
   atomic_add_int(&pmap_invl_waiters, -1);
  }
 }
}
