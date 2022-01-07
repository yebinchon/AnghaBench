
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int action; } ;
typedef TYPE_1__ svn_repos_notify_t ;
typedef int svn_repos_notify_action_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;

svn_repos_notify_t *
svn_repos_notify_create(svn_repos_notify_action_t action,
                        apr_pool_t *result_pool)
{
  svn_repos_notify_t *notify = apr_pcalloc(result_pool, sizeof(*notify));

  notify->action = action;

  return notify;
}
