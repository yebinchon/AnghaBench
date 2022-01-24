#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {scalar_t__ env; int /*<<< orphan*/  error_info; scalar_t__ pool; } ;
typedef  TYPE_1__ bdb_env_t ;
struct TYPE_7__ {scalar_t__ env; TYPE_5__* error_info; TYPE_1__* bdb; } ;
typedef  TYPE_2__ bdb_env_baton_t ;
struct TYPE_8__ {scalar_t__ refcount; int /*<<< orphan*/  pending_errors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bdb_cache_lock ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

svn_error_t *
FUNC6(bdb_env_baton_t *bdb_baton)
{
  bdb_env_t *bdb = bdb_baton->bdb;

  FUNC0(bdb_baton->env == bdb_baton->bdb->env);
  FUNC0(bdb_baton->error_info->refcount > 0);

  /* Neutralize bdb_baton's pool cleanup to prevent double-close. See
     cleanup_env_baton(). */
  bdb_baton->bdb = NULL;

  /* Note that we only bother with this cleanup if the pool is non-NULL, to
     guard against potential races between this and the cleanup_env cleanup
     callback.  It's not clear if that can actually happen, but better safe
     than sorry. */
  if (0 == --bdb_baton->error_info->refcount && bdb->pool)
    {
      FUNC4(bdb_baton->error_info->pending_errors);
#if APR_HAS_THREADS
      free(bdb_baton->error_info);
      apr_threadkey_private_set(NULL, bdb->error_info);
#endif
    }

  /* This may run during final pool cleanup when the lock is NULL. */
  FUNC1(bdb_cache_lock, FUNC5(bdb));

  return SVN_NO_ERROR;
}