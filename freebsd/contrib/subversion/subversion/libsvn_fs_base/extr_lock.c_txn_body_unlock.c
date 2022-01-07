
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {TYPE_5__* fs; int pool; } ;
typedef TYPE_2__ trail_t ;
struct TYPE_17__ {int * owner; } ;
typedef TYPE_3__ svn_lock_t ;
typedef int svn_error_t ;
struct unlock_args {int path; int * token; int break_lock; } ;
struct TYPE_18__ {TYPE_1__* access_ctx; } ;
struct TYPE_15__ {char const* username; } ;


 int SVN_ERR (int ) ;
 int * SVN_FS__ERR_LOCK_OWNER_MISMATCH (TYPE_5__*,char const*,int *) ;
 int * SVN_FS__ERR_NO_SUCH_LOCK (TYPE_5__*,int ) ;
 int * SVN_FS__ERR_NO_USER (TYPE_5__*) ;
 int * delete_lock_and_token (char const*,int ,TYPE_2__*) ;
 scalar_t__ strcmp (char const*,int *) ;
 int * svn_fs_base__err_no_lock_token (TYPE_5__*,int ) ;
 int svn_fs_bdb__lock_get (TYPE_3__**,TYPE_5__*,char const*,TYPE_2__*,int ) ;
 int svn_fs_bdb__lock_token_get (char const**,TYPE_5__*,int ,TYPE_2__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_unlock(void *baton, trail_t *trail)
{
  struct unlock_args *args = baton;
  const char *lock_token;
  svn_lock_t *lock;


  SVN_ERR(svn_fs_bdb__lock_token_get(&lock_token, trail->fs, args->path,
                                     trail, trail->pool));


  if (!args->break_lock)
    {

      if (args->token == ((void*)0))
        return svn_fs_base__err_no_lock_token(trail->fs, args->path);
      else if (strcmp(lock_token, args->token) != 0)
        return SVN_FS__ERR_NO_SUCH_LOCK(trail->fs, args->path);

      SVN_ERR(svn_fs_bdb__lock_get(&lock, trail->fs, lock_token,
                                   trail, trail->pool));


      if (!trail->fs->access_ctx || !trail->fs->access_ctx->username)
        return SVN_FS__ERR_NO_USER(trail->fs);


      if (strcmp(trail->fs->access_ctx->username, lock->owner) != 0)
        return SVN_FS__ERR_LOCK_OWNER_MISMATCH(
           trail->fs,
           trail->fs->access_ctx->username,
           lock->owner);
    }


  return delete_lock_and_token(lock_token, args->path, trail);
}
