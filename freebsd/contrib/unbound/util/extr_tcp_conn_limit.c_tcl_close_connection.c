
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcl_addr {scalar_t__ count; int lock; } ;


 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;
 int log_assert (int) ;

void
tcl_close_connection(struct tcl_addr* tcl)
{
 if(tcl) {
  lock_quick_lock(&tcl->lock);
  log_assert(tcl->count > 0);
  tcl->count--;
  lock_quick_unlock(&tcl->lock);
 }
}
