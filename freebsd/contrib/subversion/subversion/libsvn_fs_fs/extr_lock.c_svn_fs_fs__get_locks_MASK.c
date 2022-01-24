#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_get_locks_callback_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
struct TYPE_8__ {char const* path; void* get_locks_baton; int /*<<< orphan*/  get_locks_func; int /*<<< orphan*/  requested_depth; } ;
typedef  TYPE_2__ get_locks_filter_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  get_locks_filter_func ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_fs_t *fs,
                     const char *path,
                     svn_depth_t depth,
                     svn_fs_get_locks_callback_t get_locks_func,
                     void *get_locks_baton,
                     apr_pool_t *pool)
{
  const char *digest_path;
  get_locks_filter_baton_t glfb;

  FUNC0(FUNC3(fs, TRUE));
  path = FUNC2(path, pool);

  glfb.path = path;
  glfb.requested_depth = depth;
  glfb.get_locks_func = get_locks_func;
  glfb.get_locks_baton = get_locks_baton;

  /* Get the top digest path in our tree of interest, and then walk it. */
  FUNC0(FUNC1(&digest_path, fs->path, path, pool));
  FUNC0(FUNC4(fs, digest_path, get_locks_filter_func, &glfb,
                     FALSE, pool));
  return SVN_NO_ERROR;
}