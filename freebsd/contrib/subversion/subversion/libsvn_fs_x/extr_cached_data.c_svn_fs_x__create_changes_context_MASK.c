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
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_4__ {int /*<<< orphan*/  revision_file; int /*<<< orphan*/  revision; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ svn_fs_x__changes_context_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(svn_fs_x__changes_context_t **context,
                                 svn_fs_t *fs,
                                 svn_revnum_t rev,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  svn_fs_x__changes_context_t *result = FUNC1(result_pool,
                                                    sizeof(*result));
  result->fs = fs;
  result->revision = rev;

  FUNC0(FUNC2(rev, fs, scratch_pool));
  FUNC0(FUNC3(&result->revision_file, fs, rev,
                                  result_pool));

  *context = result;
  return SVN_NO_ERROR;
}