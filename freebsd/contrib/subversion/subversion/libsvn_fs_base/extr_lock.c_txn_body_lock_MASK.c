#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_4__ ;
typedef  struct TYPE_41__   TYPE_3__ ;
typedef  struct TYPE_40__   TYPE_2__ ;
typedef  struct TYPE_39__   TYPE_1__ ;
typedef  struct TYPE_38__   TYPE_10__ ;

/* Type definitions */
struct TYPE_40__ {TYPE_10__* fs; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ trail_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_41__ {void* token; int /*<<< orphan*/  expiration_date; int /*<<< orphan*/  creation_date; int /*<<< orphan*/  is_dav_comment; void* comment; void* owner; int /*<<< orphan*/  path; } ;
typedef  TYPE_3__ svn_lock_t ;
struct TYPE_42__ {scalar_t__ apr_err; } ;
typedef  TYPE_4__ svn_error_t ;
struct lock_args {scalar_t__ current_rev; TYPE_3__** lock_p; int /*<<< orphan*/  path; int /*<<< orphan*/  expiration_date; int /*<<< orphan*/  is_dav_comment; scalar_t__ comment; int /*<<< orphan*/  result_pool; scalar_t__ token; int /*<<< orphan*/  steal_lock; } ;
struct TYPE_39__ {scalar_t__ username; } ;
struct TYPE_38__ {TYPE_1__* access_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 scalar_t__ SVN_ERR_FS_BAD_LOCK_TOKEN ; 
 scalar_t__ SVN_ERR_FS_LOCK_EXPIRED ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_FS_OUT_OF_DATE ; 
 TYPE_4__* FUNC1 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (TYPE_10__*) ; 
 TYPE_4__* FUNC3 (TYPE_10__*,TYPE_3__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 TYPE_4__* SVN_NO_ERROR ; 
 char* FUNC5 (char*) ; 
 TYPE_4__* FUNC6 (TYPE_3__*,void*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 void* FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_4__* FUNC9 (void*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 TYPE_4__* FUNC12 (scalar_t__,int /*<<< orphan*/ *,char*) ; 
 TYPE_4__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC14 (void**,TYPE_10__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC15 (TYPE_3__**,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC16 (scalar_t__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC17 (scalar_t__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC18 (TYPE_3__**,TYPE_10__*,scalar_t__,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 

__attribute__((used)) static svn_error_t *
FUNC20(void *baton, trail_t *trail)
{
  struct lock_args *args = baton;
  svn_node_kind_t kind = svn_node_file;
  svn_lock_t *existing_lock;
  svn_lock_t *lock;

  *args->lock_p = NULL;

  FUNC0(FUNC17(&kind, args->path, trail, trail->pool));

  /* Until we implement directory locks someday, we only allow locks
     on files. */
  if (kind == svn_node_dir)
    return FUNC1(trail->fs, args->path);

  /* While our locking implementation easily supports the locking of
     nonexistent paths, we deliberately choose not to allow such madness. */
  if (kind == svn_node_none)
    {
      if (FUNC4(args->current_rev))
        return FUNC13(
          SVN_ERR_FS_OUT_OF_DATE, NULL,
          FUNC5("Path '%s' doesn't exist in HEAD revision"),
          args->path);
      else
        return FUNC13(
          SVN_ERR_FS_NOT_FOUND, NULL,
          FUNC5("Path '%s' doesn't exist in HEAD revision"),
          args->path);
    }

  /* There better be a username attached to the fs. */
  if (!trail->fs->access_ctx || !trail->fs->access_ctx->username)
    return FUNC2(trail->fs);

  /* Is the caller attempting to lock an out-of-date working file? */
  if (FUNC4(args->current_rev))
    {
      svn_revnum_t created_rev;
      FUNC0(FUNC16(&created_rev, args->path,
                                                trail, trail->pool));

      /* SVN_INVALID_REVNUM means the path doesn't exist.  So
         apparently somebody is trying to lock something in their
         working copy, but somebody else has deleted the thing
         from HEAD.  That counts as being 'out of date'. */
      if (! FUNC4(created_rev))
        return FUNC13(SVN_ERR_FS_OUT_OF_DATE, NULL,
                                 "Path '%s' doesn't exist in HEAD revision",
                                 args->path);

      if (args->current_rev < created_rev)
        return FUNC13(SVN_ERR_FS_OUT_OF_DATE, NULL,
                                 "Lock failed: newer version of '%s' exists",
                                 args->path);
    }

  /* If the caller provided a TOKEN, we *really* need to see
     if a lock already exists with that token, and if so, verify that
     the lock's path matches PATH.  Otherwise we run the risk of
     breaking the 1-to-1 mapping of lock tokens to locked paths. */
  if (args->token)
    {
      svn_lock_t *lock_from_token;
      svn_error_t *err = FUNC18(&lock_from_token, trail->fs,
                                              args->token, trail,
                                              trail->pool);
      if (err && ((err->apr_err == SVN_ERR_FS_LOCK_EXPIRED)
                  || (err->apr_err == SVN_ERR_FS_BAD_LOCK_TOKEN)))
        {
          FUNC11(err);
        }
      else
        {
          FUNC0(err);
          if (FUNC10(lock_from_token->path, args->path) != 0)
            return FUNC12(SVN_ERR_FS_BAD_LOCK_TOKEN, NULL,
                                    "Lock failed: token refers to existing "
                                    "lock with non-matching path.");
        }
    }

  /* Is the path already locked?

     Note that this next function call will automatically ignore any
     errors about {the path not existing as a key, the path's token
     not existing as a key, the lock just having been expired}.  And
     that's totally fine.  Any of these three errors are perfectly
     acceptable to ignore; it means that the path is now free and
     clear for locking, because the bdb funcs just cleared out both
     of the tables for us.   */
  FUNC0(FUNC15(&existing_lock, args->path,
                                       trail, trail->pool));
  if (existing_lock)
    {
      if (! args->steal_lock)
        {
          /* Sorry, the path is already locked. */
          return FUNC3(trail->fs,
                                                 existing_lock);
        }
      else
        {
          /* ARGS->steal_lock is set, so fs_username is "stealing" the
             lock from lock->owner.  Destroy the existing lock. */
          FUNC0(FUNC9(existing_lock->token,
                                        existing_lock->path, trail));
        }
    }

  /* Create a new lock, and add it to the tables. */
  lock = FUNC19(args->result_pool);
  if (args->token)
    lock->token = FUNC7(args->result_pool, args->token);
  else
    FUNC0(FUNC14(&(lock->token), trail->fs,
                                             args->result_pool));
  lock->path = args->path; /* Already in result_pool. */
  lock->owner = FUNC7(args->result_pool, trail->fs->access_ctx->username);
  lock->comment = FUNC7(args->result_pool, args->comment);
  lock->is_dav_comment = args->is_dav_comment;
  lock->creation_date = FUNC8();
  lock->expiration_date = args->expiration_date;
  FUNC0(FUNC6(lock, lock->token, args->path, trail));
  *(args->lock_p) = lock;

  return SVN_NO_ERROR;
}