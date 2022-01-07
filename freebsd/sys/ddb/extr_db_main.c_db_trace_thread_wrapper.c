
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
typedef void* jmp_buf ;


 int db_trace_thread (struct thread*,int) ;
 void* kdb_jmpbuf (void*) ;
 scalar_t__ setjmp (void*) ;

__attribute__((used)) static void
db_trace_thread_wrapper(struct thread *td)
{
 jmp_buf jb;
 void *prev_jb;

 prev_jb = kdb_jmpbuf(jb);
 if (setjmp(jb) == 0)
  db_trace_thread(td, -1);
 (void)kdb_jmpbuf(prev_jb);
}
