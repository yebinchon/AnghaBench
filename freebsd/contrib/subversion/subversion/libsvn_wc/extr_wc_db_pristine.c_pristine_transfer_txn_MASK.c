#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_COPY_PRISTINES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_wc__db_wcroot_t *src_wcroot,
                       svn_wc__db_wcroot_t *dst_wcroot,
                       const char *src_relpath,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t got_row;
  apr_pool_t *iterpool = FUNC5(scratch_pool);

  FUNC0(FUNC10(&stmt, src_wcroot->sdb,
                                    STMT_SELECT_COPY_PRISTINES));
  FUNC0(FUNC7(stmt, "is", src_wcroot->wc_id, src_relpath));

  /* This obtains an sqlite read lock on src_wcroot */
  FUNC0(FUNC12(&got_row, stmt));

  while (got_row)
    {
      const svn_checksum_t *checksum;
      const svn_checksum_t *md5_checksum;
      apr_int64_t size;
      svn_error_t *err;

      FUNC4(iterpool);

      FUNC0(FUNC8(&checksum, stmt, 0, iterpool));
      FUNC0(FUNC8(&md5_checksum, stmt, 1, iterpool));
      size = FUNC9(stmt, 2);

      err = FUNC1(src_wcroot, dst_wcroot,
                                        checksum, md5_checksum, size,
                                        cancel_func, cancel_baton,
                                        iterpool);

      if (err)
        return FUNC3(FUNC2(
                                    err,
                                    FUNC11(stmt)));

      FUNC0(FUNC12(&got_row, stmt));
    }
  FUNC0(FUNC11(stmt));

  FUNC6(iterpool);

  return SVN_NO_ERROR;
}