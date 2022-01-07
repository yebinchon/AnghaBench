
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_tid; } ;
typedef scalar_t__ db_expr_t ;


 int PC_REGS () ;
 int db_dot ;
 struct thread* db_lookup_thread (scalar_t__,int) ;
 int db_print_loc_and_inst (int ) ;
 int db_print_thread () ;
 int db_printf (char*,int) ;
 int kdb_thr_select (struct thread*) ;

void
db_set_thread(db_expr_t tid, bool hastid, db_expr_t cnt, char *mod)
{
 struct thread *thr;
 int err;

 if (hastid) {
  thr = db_lookup_thread(tid, 0);
  if (thr != ((void*)0)) {
   err = kdb_thr_select(thr);
   if (err != 0) {
    db_printf("unable to switch to thread %ld\n",
        (long)thr->td_tid);
    return;
   }
   db_dot = PC_REGS();
  } else {
   db_printf("%d: invalid thread\n", (int)tid);
   return;
  }
 }

 db_print_thread();
 db_print_loc_and_inst(PC_REGS());
}
