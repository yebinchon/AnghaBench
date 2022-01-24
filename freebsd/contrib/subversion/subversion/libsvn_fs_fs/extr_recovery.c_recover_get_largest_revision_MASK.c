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
typedef  int svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__revision_file_t ;
struct TYPE_7__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ SVN_ERR_FS_NO_SUCH_REVISION ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_fs_t *fs, svn_revnum_t *rev, apr_pool_t *pool)
{
  /* Discovering the largest revision in the filesystem would be an
     expensive operation if we did a readdir() or searched linearly,
     so we'll do a form of binary search.  left is a revision that we
     know exists, right a revision that we know does not exist. */
  apr_pool_t *iterpool;
  svn_revnum_t left, right = 1;

  iterpool = FUNC4(pool);
  /* Keep doubling right, until we find a revision that doesn't exist. */
  while (1)
    {
      svn_error_t *err;
      svn_fs_fs__revision_file_t *file;
      FUNC3(iterpool);

      err = FUNC2(&file, fs, right, iterpool,
                                             iterpool);
      if (err && err->apr_err == SVN_ERR_FS_NO_SUCH_REVISION)
        {
          FUNC1(err);
          break;
        }
      else
        FUNC0(err);

      right <<= 1;
    }

  left = right >> 1;

  /* We know that left exists and right doesn't.  Do a normal bsearch to find
     the last revision. */
  while (left + 1 < right)
    {
      svn_revnum_t probe = left + ((right - left) / 2);
      svn_error_t *err;
      svn_fs_fs__revision_file_t *file;
      FUNC3(iterpool);

      err = FUNC2(&file, fs, probe, iterpool,
                                             iterpool);
      if (err && err->apr_err == SVN_ERR_FS_NO_SUCH_REVISION)
        {
          FUNC1(err);
          right = probe;
        }
      else
        {
          FUNC0(err);
          left = probe;
        }
    }

  FUNC5(iterpool);

  /* left is now the largest revision that exists. */
  *rev = left;
  return SVN_NO_ERROR;
}