#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  (* svn_repos_authz_func_t ) (void**,int /*<<< orphan*/ *,char const*,void*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
struct TYPE_3__ {char* copyfrom_path; int /*<<< orphan*/  copyfrom_rev; void* copyfrom_known; } ;
typedef  TYPE_1__ svn_fs_path_change3_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  void* svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_fs_root_t **copyfrom_root,
              const char **copyfrom_path,
              svn_revnum_t *copyfrom_rev,
              svn_boolean_t *src_readable,
              svn_fs_root_t *root,
              svn_fs_path_change3_t *change,
              svn_repos_authz_func_t authz_read_func,
              void *authz_read_baton,
              const char *path,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  if (! change->copyfrom_known)
    {
      FUNC0(FUNC2(&(change->copyfrom_rev),
                                 &(change->copyfrom_path),
                                 root, path, result_pool));
      change->copyfrom_known = TRUE;
    }
  *copyfrom_rev = change->copyfrom_rev;
  *copyfrom_path = change->copyfrom_path;

  if (*copyfrom_path && FUNC1(*copyfrom_rev))
    {
      FUNC0(FUNC3(copyfrom_root,
                                   FUNC4(root),
                                   *copyfrom_rev, result_pool));

      if (authz_read_func)
        {
          FUNC0(authz_read_func(src_readable, *copyfrom_root,
                                  *copyfrom_path,
                                  authz_read_baton, result_pool));
        }
      else
        *src_readable = TRUE;
    }
  else
    {
      *copyfrom_root = NULL;
      /* SRC_READABLE left uninitialized */
    }
  return SVN_NO_ERROR;
}