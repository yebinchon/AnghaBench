
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int action; void* revision; void* shard; } ;
typedef TYPE_1__ svn_repos_notify_t ;
typedef int svn_fs_upgrade_notify_action_t ;
typedef int svn_error_t ;
struct fs_upgrade_notify_baton_t {int notify_baton; int (* notify_func ) (int ,TYPE_1__*,int *) ;} ;
typedef void* apr_uint64_t ;
typedef int apr_pool_t ;


 int SVN_ERR_MALFUNCTION () ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,TYPE_1__*,int *) ;



 int svn_repos_notify_cleanup_revprops ;
 TYPE_1__* svn_repos_notify_create (int ,int *) ;
 int svn_repos_notify_format_bumped ;
 int svn_repos_notify_mutex_acquired ;
 int svn_repos_notify_pack_revprops ;

__attribute__((used)) static svn_error_t *
fs_upgrade_notify(void *baton,
                  apr_uint64_t number,
                  svn_fs_upgrade_notify_action_t action,
                  apr_pool_t *pool)
{
  struct fs_upgrade_notify_baton_t *fs_baton = baton;

  svn_repos_notify_t *notify = svn_repos_notify_create(
                                svn_repos_notify_mutex_acquired, pool);
  switch(action)
    {
      case 128:
        notify->shard = number;
        notify->action = svn_repos_notify_pack_revprops;
        break;

      case 130:
        notify->shard = number;
        notify->action = svn_repos_notify_cleanup_revprops;
        break;

      case 129:
        notify->revision = number;
        notify->action = svn_repos_notify_format_bumped;
        break;

      default:

        SVN_ERR_MALFUNCTION();
    }

  fs_baton->notify_func(fs_baton->notify_baton, notify, pool);

  return SVN_NO_ERROR;
}
