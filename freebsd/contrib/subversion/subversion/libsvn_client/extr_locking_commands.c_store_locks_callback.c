
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int url; void* lock_state; int path_prefix; TYPE_3__* err; int const* lock; } ;
typedef TYPE_2__ svn_wc_notify_t ;
typedef int svn_lock_t ;
struct TYPE_11__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct lock_baton {TYPE_1__* ctx; int base_url; int pool; int base_dir_abspath; scalar_t__ urls_to_paths; } ;
typedef int apr_pool_t ;
struct TYPE_9__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_2__*,int *) ;int wc_ctx; } ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_FS_LOCK_OWNER_MISMATCH ;
 scalar_t__ SVN_ERR_REPOS_HOOK_FAILURE ;
 TYPE_3__* SVN_NO_ERROR ;
 int stub1 (int ,TYPE_2__*,int *) ;
 char* svn_hash_gets (scalar_t__,char const*) ;
 int svn_path_url_add_component2 (int ,char const*,int *) ;
 int svn_wc_add_lock2 (int ,char const*,int const*,int ) ;
 TYPE_2__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_failed_lock ;
 int svn_wc_notify_failed_unlock ;
 void* svn_wc_notify_lock_state_locked ;
 void* svn_wc_notify_lock_state_unchanged ;
 void* svn_wc_notify_lock_state_unlocked ;
 int svn_wc_notify_locked ;
 int svn_wc_notify_unlocked ;
 int svn_wc_remove_lock2 (int ,char const*,int ) ;

__attribute__((used)) static svn_error_t *
store_locks_callback(void *baton,
                     const char *rel_url,
                     svn_boolean_t do_lock,
                     const svn_lock_t *lock,
                     svn_error_t *ra_err, apr_pool_t *pool)
{
  struct lock_baton *lb = baton;
  svn_wc_notify_t *notify;
  const char *local_abspath = lb->urls_to_paths
                                  ? svn_hash_gets(lb->urls_to_paths, rel_url)
                                  : ((void*)0);


  notify = svn_wc_create_notify(local_abspath ? local_abspath : rel_url,
                                do_lock
                                ? (ra_err
                                   ? svn_wc_notify_failed_lock
                                   : svn_wc_notify_locked)
                                : (ra_err
                                   ? svn_wc_notify_failed_unlock
                                   : svn_wc_notify_unlocked),
                                pool);
  notify->lock = lock;
  notify->err = ra_err;

  if (local_abspath)
    {

      notify->path_prefix = lb->base_dir_abspath;

      if (do_lock)
        {
          if (!ra_err && lock)
            {
              SVN_ERR(svn_wc_add_lock2(lb->ctx->wc_ctx, local_abspath, lock,
                                       lb->pool));
              notify->lock_state = svn_wc_notify_lock_state_locked;
            }
          else
            notify->lock_state = svn_wc_notify_lock_state_unchanged;
        }
      else
        {






          if (!ra_err ||
              (ra_err && (ra_err->apr_err != SVN_ERR_FS_LOCK_OWNER_MISMATCH
                          && ra_err->apr_err != SVN_ERR_REPOS_HOOK_FAILURE)))
            {
              SVN_ERR(svn_wc_remove_lock2(lb->ctx->wc_ctx, local_abspath,
                                          lb->pool));
              notify->lock_state = svn_wc_notify_lock_state_unlocked;
            }
          else
            notify->lock_state = svn_wc_notify_lock_state_unchanged;
        }
    }
  else
    notify->url = svn_path_url_add_component2(lb->base_url, rel_url, pool);

  if (lb->ctx->notify_func2)
    lb->ctx->notify_func2(lb->ctx->notify_baton2, notify, pool);

  return SVN_NO_ERROR;
}
