
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ action; } ;
typedef TYPE_1__ svn_wc_notify_t ;
struct downgrade_commit_copied_notify_baton {int orig_notify_baton2; int (* orig_notify_func2 ) (int ,TYPE_1__ const*,int *) ;} ;
typedef int apr_pool_t ;


 int stub1 (int ,TYPE_1__ const*,int *) ;
 TYPE_1__* svn_wc_dup_notify (TYPE_1__ const*,int *) ;
 scalar_t__ svn_wc_notify_commit_added ;
 scalar_t__ svn_wc_notify_commit_copied ;
 scalar_t__ svn_wc_notify_commit_copied_replaced ;
 scalar_t__ svn_wc_notify_commit_replaced ;

__attribute__((used)) static void
downgrade_commit_copied_notify_func(void *baton,
                                    const svn_wc_notify_t *notify,
                                    apr_pool_t *pool)
{
  struct downgrade_commit_copied_notify_baton *b = baton;

  if (notify->action == svn_wc_notify_commit_copied)
    {
      svn_wc_notify_t *my_notify = svn_wc_dup_notify(notify, pool);
      my_notify->action = svn_wc_notify_commit_added;
      notify = my_notify;
    }
  else if (notify->action == svn_wc_notify_commit_copied_replaced)
    {
      svn_wc_notify_t *my_notify = svn_wc_dup_notify(notify, pool);
      my_notify->action = svn_wc_notify_commit_replaced;
      notify = my_notify;
    }




  if (b->orig_notify_func2)
    b->orig_notify_func2(b->orig_notify_baton2, notify, pool);
}
