
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ action; } ;
typedef TYPE_1__ svn_wc_notify_t ;
struct svn_cl__check_externals_failed_notify_baton {int wrapped_baton; int (* wrapped_func ) (int ,TYPE_1__ const*,int *) ;int had_externals_error; } ;
typedef int apr_pool_t ;


 int TRUE ;
 int stub1 (int ,TYPE_1__ const*,int *) ;
 scalar_t__ svn_wc_notify_failed_external ;

void
svn_cl__check_externals_failed_notify_wrapper(void *baton,
                                              const svn_wc_notify_t *n,
                                              apr_pool_t *pool)
{
  struct svn_cl__check_externals_failed_notify_baton *nwb = baton;

  if (n->action == svn_wc_notify_failed_external)
    nwb->had_externals_error = TRUE;

  if (nwb->wrapped_func)
    nwb->wrapped_func(nwb->wrapped_baton, n, pool);
}
