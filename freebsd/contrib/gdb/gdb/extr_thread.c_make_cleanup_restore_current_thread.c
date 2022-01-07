
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct current_thread_cleanup {int inferior_ptid; } ;
struct cleanup {int dummy; } ;
typedef int ptid_t ;


 int do_restore_current_thread_cleanup ;
 struct cleanup* make_cleanup (int ,struct current_thread_cleanup*) ;
 struct current_thread_cleanup* xmalloc (int) ;

__attribute__((used)) static struct cleanup *
make_cleanup_restore_current_thread (ptid_t inferior_ptid)
{
  struct current_thread_cleanup *old
    = xmalloc (sizeof (struct current_thread_cleanup));
  old->inferior_ptid = inferior_ptid;
  return make_cleanup (do_restore_current_thread_cleanup, old);
}
