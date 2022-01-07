
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
struct thread_info {int num; struct thread_info* next; } ;
struct cleanup {int dummy; } ;


 int GDB_RC_OK ;
 int do_cleanups (struct cleanup*) ;
 struct cleanup* make_cleanup_ui_out_tuple_begin_end (struct ui_out*,char*) ;
 int prune_threads () ;
 int target_find_new_threads () ;
 struct thread_info* thread_list ;
 int ui_out_field_int (struct ui_out*,char*,int) ;

__attribute__((used)) static int
do_captured_list_thread_ids (struct ui_out *uiout, void *arg)
{
  struct thread_info *tp;
  int num = 0;
  struct cleanup *cleanup_chain;

  prune_threads ();
  target_find_new_threads ();

  cleanup_chain = make_cleanup_ui_out_tuple_begin_end (uiout, "thread-ids");

  for (tp = thread_list; tp; tp = tp->next)
    {
      num++;
      ui_out_field_int (uiout, "thread-id", tp->num);
    }

  do_cleanups (cleanup_chain);
  ui_out_field_int (uiout, "number-of-threads", num);
  return GDB_RC_OK;
}
