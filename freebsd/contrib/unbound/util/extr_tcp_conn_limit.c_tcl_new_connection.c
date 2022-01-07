
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcl_addr {scalar_t__ count; scalar_t__ limit; int lock; } ;


 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;

int
tcl_new_connection(struct tcl_addr* tcl)
{
 if(tcl) {
  int res = 1;
  lock_quick_lock(&tcl->lock);
  if(tcl->count >= tcl->limit)
   res = 0;
  else
   tcl->count++;
  lock_quick_unlock(&tcl->lock);
  return res;
 }
 return 1;
}
