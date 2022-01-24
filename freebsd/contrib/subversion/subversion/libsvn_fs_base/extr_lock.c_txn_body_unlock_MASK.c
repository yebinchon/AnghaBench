#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_5__* fs; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ trail_t ;
struct TYPE_17__ {int /*<<< orphan*/ * owner; } ;
typedef  TYPE_3__ svn_lock_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct unlock_args {int /*<<< orphan*/  path; int /*<<< orphan*/ * token; int /*<<< orphan*/  break_lock; } ;
struct TYPE_18__ {TYPE_1__* access_ctx; } ;
struct TYPE_15__ {char const* username; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_5__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__**,TYPE_5__*,char const*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const**,TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC9(void *baton, trail_t *trail)
{
  struct unlock_args *args = baton;
  const char *lock_token;
  svn_lock_t *lock;

  /* This could return SVN_ERR_FS_BAD_LOCK_TOKEN or SVN_ERR_FS_LOCK_EXPIRED. */
  FUNC0(FUNC8(&lock_token, trail->fs, args->path,
                                     trail, trail->pool));

  /* If not breaking the lock, we need to do some more checking. */
  if (!args->break_lock)
    {
      /* Sanity check: The lock token must exist, and must match. */
      if (args->token == NULL)
        return FUNC6(trail->fs, args->path);
      else if (FUNC5(lock_token, args->token) != 0)
        return FUNC2(trail->fs, args->path);

      FUNC0(FUNC7(&lock, trail->fs, lock_token,
                                   trail, trail->pool));

      /* There better be a username attached to the fs. */
      if (!trail->fs->access_ctx || !trail->fs->access_ctx->username)
        return FUNC3(trail->fs);

      /* And that username better be the same as the lock's owner. */
      if (FUNC5(trail->fs->access_ctx->username, lock->owner) != 0)
        return FUNC1(
           trail->fs,
           trail->fs->access_ctx->username,
           lock->owner);
    }

  /* Remove a row from each of the locking tables. */
  return FUNC4(lock_token, args->path, trail);
}