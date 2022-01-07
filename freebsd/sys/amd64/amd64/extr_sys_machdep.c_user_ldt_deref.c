
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_ldt {int dummy; } ;


 int MA_OWNED ;
 int dt_lock ;
 int mtx_assert (int *,int ) ;
 int mtx_unlock (int *) ;
 int user_ldt_derefl (struct proc_ldt*) ;

__attribute__((used)) static void
user_ldt_deref(struct proc_ldt *pldt)
{

 mtx_assert(&dt_lock, MA_OWNED);
 user_ldt_derefl(pldt);
 mtx_unlock(&dt_lock);
}
