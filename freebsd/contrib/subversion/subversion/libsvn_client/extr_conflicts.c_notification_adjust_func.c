
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int path; } ;
typedef TYPE_1__ svn_wc_notify_t ;
struct notification_adjust_baton {int inner_baton; int (* inner_func ) (int ,TYPE_1__*,int *) ;int final_abspath; int checkout_abspath; } ;
typedef int apr_pool_t ;


 int stub1 (int ,TYPE_1__*,int *) ;
 int svn_dirent_join (int ,char const*,int *) ;
 char* svn_dirent_skip_ancestor (int ,int ) ;
 TYPE_1__* svn_wc_dup_notify (TYPE_1__ const*,int *) ;

__attribute__((used)) static void
notification_adjust_func(void *baton,
                         const svn_wc_notify_t *notify,
                         apr_pool_t *pool)
{
  struct notification_adjust_baton *nb = baton;
  svn_wc_notify_t *inner_notify = svn_wc_dup_notify(notify, pool);
  const char *relpath;

  relpath = svn_dirent_skip_ancestor(nb->checkout_abspath, notify->path);
  inner_notify->path = svn_dirent_join(nb->final_abspath, relpath, pool);

  if (nb->inner_func)
    nb->inner_func(nb->inner_baton, inner_notify, pool);
}
