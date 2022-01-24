#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int svn_revnum_t ;
struct TYPE_12__ {int max_files_per_dir; } ;
typedef  TYPE_1__ svn_fs_x__data_t ;
typedef  int /*<<< orphan*/  svn_fs_x__batch_fsync_t ;
struct TYPE_13__ {int /*<<< orphan*/  path; TYPE_1__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
struct TYPE_14__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PATH_REVS_DIR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_fs_t *fs,
                  svn_revnum_t revision,
                  svn_fs_x__batch_fsync_t *batch,
                  apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  if (revision % ffd->max_files_per_dir == 0)
    {
      const char *new_dir = FUNC6(fs, revision, scratch_pool);
      svn_error_t *err = FUNC8(new_dir, APR_OS_DEFAULT,
                                         scratch_pool);

      if (err && !FUNC0(err->apr_err))
        return FUNC4(err);
      FUNC3(err);

      FUNC1(FUNC7(FUNC2(fs->path, PATH_REVS_DIR,
                                                scratch_pool),
                                new_dir, scratch_pool));
      FUNC1(FUNC5(batch, new_dir, scratch_pool));
    }

  return SVN_NO_ERROR;
}