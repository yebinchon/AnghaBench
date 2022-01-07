
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ action; } ;
typedef TYPE_1__ svn_repos_notify_t ;
struct recover_baton {int start_callback_baton; int (* start_callback ) (int ) ;} ;
typedef int apr_pool_t ;


 int stub1 (int ) ;
 int svn_error_clear (int ) ;
 scalar_t__ svn_repos_notify_mutex_acquired ;

__attribute__((used)) static void
recovery_started(void *baton,
                 const svn_repos_notify_t *notify,
                 apr_pool_t *scratch_pool)
{
  struct recover_baton *rb = baton;

  if (notify->action == svn_repos_notify_mutex_acquired
      && rb->start_callback != ((void*)0))
    svn_error_clear(rb->start_callback(rb->start_callback_baton));
}
