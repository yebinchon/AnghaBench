
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_kstack; scalar_t__ td_tid; } ;
typedef void* jmp_buf ;
typedef int db_expr_t ;


 int db_pager_quit ;
 int db_printf (char*,...) ;
 scalar_t__ db_trace_thread (struct thread*,int) ;
 void* kdb_jmpbuf (void*) ;
 struct thread* kdb_thr_first () ;
 struct thread* kdb_thr_next (struct thread*) ;
 scalar_t__ setjmp (void*) ;

void
db_show_threads(db_expr_t addr, bool hasaddr, db_expr_t cnt, char *mod)
{
 jmp_buf jb;
 void *prev_jb;
 struct thread *thr;

 thr = kdb_thr_first();
 while (!db_pager_quit && thr != ((void*)0)) {
  db_printf("  %6ld (%p) (stack %p)  ", (long)thr->td_tid, thr,
      (void *)thr->td_kstack);
  prev_jb = kdb_jmpbuf(jb);
  if (setjmp(jb) == 0) {
   if (db_trace_thread(thr, 1) != 0)
    db_printf("***\n");
  }
  kdb_jmpbuf(prev_jb);
  thr = kdb_thr_next(thr);
 }
}
