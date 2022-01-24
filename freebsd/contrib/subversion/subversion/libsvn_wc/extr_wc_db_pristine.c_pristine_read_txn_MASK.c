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
struct TYPE_3__ {int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  APR_READ ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  STMT_SELECT_PRISTINE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(svn_stream_t **contents,
                  svn_filesize_t *size,
                  svn_wc__db_wcroot_t *wcroot,
                  const svn_checksum_t *sha1_checksum,
                  const char *pristine_abspath,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  /* Check that this pristine text is present in the store.  (The presence
   * of the file is not sufficient.) */
  FUNC0(FUNC7(&stmt, wcroot->sdb,
                                    STMT_SELECT_PRISTINE_SIZE));
  FUNC0(FUNC5(stmt, 1, sha1_checksum, scratch_pool));
  FUNC0(FUNC9(&have_row, stmt));

  if (size)
    *size = FUNC6(stmt, 0);

  FUNC0(FUNC8(stmt));
  if (! have_row)
    {
      return FUNC3(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                               FUNC1("Pristine text '%s' not present"),
                               FUNC2(
                                 sha1_checksum, scratch_pool));
    }

  /* Open the file as a readable stream.  It will remain readable even when
   * deleted from disk; APR guarantees that on Windows as well as Unix.
   *
   * We also don't enable APR_BUFFERED on this file to maximize throughput
   * e.g. for fulltext comparison.  As we use SVN__STREAM_CHUNK_SIZE buffers
   * where needed in streams, there is no point in having another layer of
   * buffers. */
  if (contents)
    {
      apr_file_t *file;
      FUNC0(FUNC4(&file, pristine_abspath, APR_READ,
                               APR_OS_DEFAULT, result_pool));
      *contents = FUNC10(file, FALSE, result_pool);
    }

  return SVN_NO_ERROR;
}