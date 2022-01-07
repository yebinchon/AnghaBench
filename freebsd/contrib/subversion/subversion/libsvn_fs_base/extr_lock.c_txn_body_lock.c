
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_4__ ;
typedef struct TYPE_41__ TYPE_3__ ;
typedef struct TYPE_40__ TYPE_2__ ;
typedef struct TYPE_39__ TYPE_1__ ;
typedef struct TYPE_38__ TYPE_10__ ;


struct TYPE_40__ {TYPE_10__* fs; int pool; } ;
typedef TYPE_2__ trail_t ;
typedef scalar_t__ svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_41__ {void* token; int expiration_date; int creation_date; int is_dav_comment; void* comment; void* owner; int path; } ;
typedef TYPE_3__ svn_lock_t ;
struct TYPE_42__ {scalar_t__ apr_err; } ;
typedef TYPE_4__ svn_error_t ;
struct lock_args {scalar_t__ current_rev; TYPE_3__** lock_p; int path; int expiration_date; int is_dav_comment; scalar_t__ comment; int result_pool; scalar_t__ token; int steal_lock; } ;
struct TYPE_39__ {scalar_t__ username; } ;
struct TYPE_38__ {TYPE_1__* access_ctx; } ;


 int SVN_ERR (TYPE_4__*) ;
 scalar_t__ SVN_ERR_FS_BAD_LOCK_TOKEN ;
 scalar_t__ SVN_ERR_FS_LOCK_EXPIRED ;
 int SVN_ERR_FS_NOT_FOUND ;
 int SVN_ERR_FS_OUT_OF_DATE ;
 TYPE_4__* SVN_FS__ERR_NOT_FILE (TYPE_10__*,int ) ;
 TYPE_4__* SVN_FS__ERR_NO_USER (TYPE_10__*) ;
 TYPE_4__* SVN_FS__ERR_PATH_ALREADY_LOCKED (TYPE_10__*,TYPE_3__*) ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 TYPE_4__* SVN_NO_ERROR ;
 char* _ (char*) ;
 TYPE_4__* add_lock_and_token (TYPE_3__*,void*,int ,TYPE_2__*) ;
 void* apr_pstrdup (int ,scalar_t__) ;
 int apr_time_now () ;
 TYPE_4__* delete_lock_and_token (void*,int ,TYPE_2__*) ;
 scalar_t__ strcmp (int ,int ) ;
 int svn_error_clear (TYPE_4__*) ;
 TYPE_4__* svn_error_create (scalar_t__,int *,char*) ;
 TYPE_4__* svn_error_createf (int ,int *,char*,int ) ;
 TYPE_4__* svn_fs_base__generate_lock_token (void**,TYPE_10__*,int ) ;
 TYPE_4__* svn_fs_base__get_lock_helper (TYPE_3__**,int ,TYPE_2__*,int ) ;
 TYPE_4__* svn_fs_base__get_path_created_rev (scalar_t__*,int ,TYPE_2__*,int ) ;
 TYPE_4__* svn_fs_base__get_path_kind (scalar_t__*,int ,TYPE_2__*,int ) ;
 TYPE_4__* svn_fs_bdb__lock_get (TYPE_3__**,TYPE_10__*,scalar_t__,TYPE_2__*,int ) ;
 TYPE_3__* svn_lock_create (int ) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;

__attribute__((used)) static svn_error_t *
txn_body_lock(void *baton, trail_t *trail)
{
  struct lock_args *args = baton;
  svn_node_kind_t kind = svn_node_file;
  svn_lock_t *existing_lock;
  svn_lock_t *lock;

  *args->lock_p = ((void*)0);

  SVN_ERR(svn_fs_base__get_path_kind(&kind, args->path, trail, trail->pool));



  if (kind == svn_node_dir)
    return SVN_FS__ERR_NOT_FILE(trail->fs, args->path);



  if (kind == svn_node_none)
    {
      if (SVN_IS_VALID_REVNUM(args->current_rev))
        return svn_error_createf(
          SVN_ERR_FS_OUT_OF_DATE, ((void*)0),
          _("Path '%s' doesn't exist in HEAD revision"),
          args->path);
      else
        return svn_error_createf(
          SVN_ERR_FS_NOT_FOUND, ((void*)0),
          _("Path '%s' doesn't exist in HEAD revision"),
          args->path);
    }


  if (!trail->fs->access_ctx || !trail->fs->access_ctx->username)
    return SVN_FS__ERR_NO_USER(trail->fs);


  if (SVN_IS_VALID_REVNUM(args->current_rev))
    {
      svn_revnum_t created_rev;
      SVN_ERR(svn_fs_base__get_path_created_rev(&created_rev, args->path,
                                                trail, trail->pool));





      if (! SVN_IS_VALID_REVNUM(created_rev))
        return svn_error_createf(SVN_ERR_FS_OUT_OF_DATE, ((void*)0),
                                 "Path '%s' doesn't exist in HEAD revision",
                                 args->path);

      if (args->current_rev < created_rev)
        return svn_error_createf(SVN_ERR_FS_OUT_OF_DATE, ((void*)0),
                                 "Lock failed: newer version of '%s' exists",
                                 args->path);
    }





  if (args->token)
    {
      svn_lock_t *lock_from_token;
      svn_error_t *err = svn_fs_bdb__lock_get(&lock_from_token, trail->fs,
                                              args->token, trail,
                                              trail->pool);
      if (err && ((err->apr_err == SVN_ERR_FS_LOCK_EXPIRED)
                  || (err->apr_err == SVN_ERR_FS_BAD_LOCK_TOKEN)))
        {
          svn_error_clear(err);
        }
      else
        {
          SVN_ERR(err);
          if (strcmp(lock_from_token->path, args->path) != 0)
            return svn_error_create(SVN_ERR_FS_BAD_LOCK_TOKEN, ((void*)0),
                                    "Lock failed: token refers to existing "
                                    "lock with non-matching path.");
        }
    }
  SVN_ERR(svn_fs_base__get_lock_helper(&existing_lock, args->path,
                                       trail, trail->pool));
  if (existing_lock)
    {
      if (! args->steal_lock)
        {

          return SVN_FS__ERR_PATH_ALREADY_LOCKED(trail->fs,
                                                 existing_lock);
        }
      else
        {


          SVN_ERR(delete_lock_and_token(existing_lock->token,
                                        existing_lock->path, trail));
        }
    }


  lock = svn_lock_create(args->result_pool);
  if (args->token)
    lock->token = apr_pstrdup(args->result_pool, args->token);
  else
    SVN_ERR(svn_fs_base__generate_lock_token(&(lock->token), trail->fs,
                                             args->result_pool));
  lock->path = args->path;
  lock->owner = apr_pstrdup(args->result_pool, trail->fs->access_ctx->username);
  lock->comment = apr_pstrdup(args->result_pool, args->comment);
  lock->is_dav_comment = args->is_dav_comment;
  lock->creation_date = apr_time_now();
  lock->expiration_date = args->expiration_date;
  SVN_ERR(add_lock_and_token(lock, lock->token, args->path, trail));
  *(args->lock_p) = lock;

  return SVN_NO_ERROR;
}
