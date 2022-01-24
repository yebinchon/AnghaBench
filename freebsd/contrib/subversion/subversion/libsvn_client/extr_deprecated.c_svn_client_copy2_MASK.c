#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
struct TYPE_7__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_commit_info_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ SVN_ERR_ENTRY_EXISTS ; 
 scalar_t__ SVN_ERR_FS_ALREADY_EXISTS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_commit_info_t **commit_info_p,
                 const char *src_path,
                 const svn_opt_revision_t *src_revision,
                 const char *dst_path,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *pool)
{
  svn_error_t *err;

  err = FUNC0(commit_info_p, src_path, src_revision,
                         dst_path, ctx, pool);

  /* If the target exists, try to copy the source as a child of the target.
     This will obviously fail if target is not a directory, but that's exactly
     what we want. */
  if (err && (err->apr_err == SVN_ERR_ENTRY_EXISTS
              || err->apr_err == SVN_ERR_FS_ALREADY_EXISTS))
    {
      const char *src_basename = FUNC3(src_path, pool);

      FUNC1(err);

      return FUNC0(commit_info_p, src_path, src_revision,
                              FUNC4(dst_path, src_basename, pool),
                              ctx, pool);
    }

  return FUNC2(err);
}