
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ action; } ;
typedef TYPE_1__ svn_wc_notify_t ;
struct notify_lock_baton_t {int inner_baton; int (* inner_notify ) (int ,TYPE_1__ const*,int *) ;int had_failure; } ;
typedef int apr_pool_t ;


 int TRUE ;
 int stub1 (int ,TYPE_1__ const*,int *) ;
 scalar_t__ svn_wc_notify_failed_lock ;

__attribute__((used)) static void
notify_lock_handler(void *baton,
                    const svn_wc_notify_t *notify,
                    apr_pool_t *scratch_pool)
{
  struct notify_lock_baton_t *nlb = baton;

  if (notify->action == svn_wc_notify_failed_lock)
    nlb->had_failure = TRUE;

  if (nlb->inner_notify)
    nlb->inner_notify(nlb->inner_baton, notify, scratch_pool);
}
