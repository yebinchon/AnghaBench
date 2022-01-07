
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int owner; int token; } ;
typedef TYPE_2__ svn_lock_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct unlock_baton {TYPE_4__* fs; int break_lock; } ;
typedef int apr_pool_t ;
struct TYPE_9__ {TYPE_1__* access_ctx; } ;
struct TYPE_7__ {char const* username; } ;


 int * SVN_FS__ERR_LOCK_OWNER_MISMATCH (TYPE_4__*,char const*,int ) ;
 int * SVN_FS__ERR_NO_SUCH_LOCK (TYPE_4__*,char const*) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * get_lock (TYPE_2__**,TYPE_4__*,char const*,int ,int ,int *) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static svn_error_t *
check_unlock(svn_error_t **fs_err,
             const char *path,
             const char *token,
             struct unlock_baton *ub,
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
