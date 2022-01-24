#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
struct TYPE_4__ {TYPE_2__* commit_ctx; int /*<<< orphan*/  relpath; int /*<<< orphan*/  non_recursive_if; int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ delete_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {scalar_t__ keep_locks; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_DAV_OPTIONS_HEADER ; 
 int /*<<< orphan*/  SVN_DAV_OPTION_KEEP_LOCKS ; 
 int /*<<< orphan*/  SVN_DAV_VERSION_NAME_HEADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(serf_bucket_t *headers,
                     void *baton,
                     apr_pool_t *pool /* request pool */,
                     apr_pool_t *scratch_pool)
{
  delete_context_t *del = baton;
  svn_boolean_t added;

  FUNC3(headers, SVN_DAV_VERSION_NAME_HEADER,
                          FUNC1(pool, del->revision));

  if (! del->non_recursive_if)
    FUNC0(FUNC5(&added, headers, del->commit_ctx,
                                      del->relpath, pool));
  else
    {
      FUNC0(FUNC2(headers, del->commit_ctx,
                                          del->relpath, pool));
      added = TRUE;
    }

  if (added && del->commit_ctx->keep_locks)
    FUNC4(headers, SVN_DAV_OPTIONS_HEADER,
                                      SVN_DAV_OPTION_KEEP_LOCKS);

  return SVN_NO_ERROR;
}