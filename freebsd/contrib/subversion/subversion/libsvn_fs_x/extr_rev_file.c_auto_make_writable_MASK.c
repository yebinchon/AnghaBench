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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  file_path; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_1__ set_read_only_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_finfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN__APR_FINFO_READONLY ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  apr_pool_cleanup_null ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  set_read_only ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(const char *path,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  svn_boolean_t is_read_only;
  apr_finfo_t finfo;

  FUNC0(FUNC6(&finfo, path, SVN__APR_FINFO_READONLY, scratch_pool));
  FUNC0(FUNC4(&is_read_only, &finfo, scratch_pool));

  if (is_read_only)
    {
      /* Tell the pool to restore the r/o state upon cleanup
         (assuming the file will still exist, failing silently otherwise). */
      set_read_only_baton_t *baton = FUNC1(result_pool,
                                                  sizeof(*baton));
      baton->pool = result_pool;
      baton->file_path = FUNC3(result_pool, path);
      FUNC2(result_pool, baton,
                                set_read_only, apr_pool_cleanup_null);

      /* Finally, allow write access (undoing it has already been scheduled
         and is idempotent). */
      FUNC0(FUNC5(path, FALSE, scratch_pool));
    }

  return SVN_NO_ERROR;
}