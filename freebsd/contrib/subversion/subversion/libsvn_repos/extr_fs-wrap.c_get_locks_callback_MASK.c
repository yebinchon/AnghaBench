#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ svn_lock_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct get_locks_baton_t {int /*<<< orphan*/  locks; int /*<<< orphan*/  authz_read_baton; int /*<<< orphan*/  head_root; int /*<<< orphan*/  (* authz_read_func ) (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(void *baton,
                   svn_lock_t *lock,
                   apr_pool_t *pool)
{
  struct get_locks_baton_t *b = baton;
  svn_boolean_t readable = TRUE;
  apr_pool_t *hash_pool = FUNC1(b->locks);

  /* If there's auth to deal with, deal with it. */
  if (b->authz_read_func)
    FUNC0(b->authz_read_func(&readable, b->head_root, lock->path,
                               b->authz_read_baton, pool));

  /* If we can read this lock path, add the lock to the return hash. */
  if (readable)
    FUNC4(b->locks, FUNC2(hash_pool, lock->path),
                  FUNC5(lock, hash_pool));

  return SVN_NO_ERROR;
}