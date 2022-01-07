
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_5__* fs; int break_lock; } ;
typedef TYPE_2__ unlock_baton_t ;
struct TYPE_11__ {int owner; int token; } ;
typedef TYPE_3__ svn_lock_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_12__ {TYPE_1__* access_ctx; } ;
struct TYPE_9__ {char const* username; } ;


 int * SVN_FS__ERR_LOCK_OWNER_MISMATCH (TYPE_5__*,char const*,int ) ;
 int * SVN_FS__ERR_NO_SUCH_LOCK (TYPE_5__*,char const*) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * get_lock (TYPE_3__**,TYPE_5__*,char const*,int ,int ,int *) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static svn_error_t *
check_unlock(svn_error_t **fs_err,
             const char *path,
             const char *token,
             unlock_baton_t *ub,
             svn_fs_root_t *root,
             apr_pool_t *pool)
{
  svn_lock_t *lock;

  *fs_err = get_lock(&lock, ub->fs, path, TRUE, TRUE, pool);
  if (!*fs_err && !ub->break_lock)
    {
      if (strcmp(token, lock->token) != 0)
        *fs_err = SVN_FS__ERR_NO_SUCH_LOCK(ub->fs, path);
      else if (strcmp(ub->fs->access_ctx->username, lock->owner) != 0)
        *fs_err = SVN_FS__ERR_LOCK_OWNER_MISMATCH(ub->fs,
                                                  ub->fs->access_ctx->username,
                                                  lock->owner);
    }

  return SVN_NO_ERROR;
}
