#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_5__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {scalar_t__ youngest_rev_cache; } ;
typedef  TYPE_2__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NO_SUCH_REVISION ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

svn_error_t *
FUNC5(svn_revnum_t rev,
                                  svn_fs_t *fs,
                                  apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;

  if (! FUNC1(rev))
    return FUNC4(SVN_ERR_FS_NO_SUCH_REVISION, NULL,
                             FUNC2("Invalid revision number '%ld'"), rev);


  /* Did the revision exist the last time we checked the current
     file? */
  if (rev <= ffd->youngest_rev_cache)
    return SVN_NO_ERROR;

  FUNC0(FUNC3(&(ffd->youngest_rev_cache), fs, pool));

  /* Check again. */
  if (rev <= ffd->youngest_rev_cache)
    return SVN_NO_ERROR;

  return FUNC4(SVN_ERR_FS_NO_SUCH_REVISION, NULL,
                           FUNC2("No such revision %ld"), rev);
}