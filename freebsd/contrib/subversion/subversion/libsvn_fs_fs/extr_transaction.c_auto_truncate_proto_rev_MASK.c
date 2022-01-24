#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_off_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_INDEX_INCONSISTENT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(svn_fs_t *fs,
                        apr_file_t *proto_rev,
                        apr_off_t actual_length,
                        const svn_fs_fs__id_part_t *txn_id,
                        apr_pool_t *pool)
{
  /* Only relevant for newer FSFS formats. */
  if (FUNC8(fs))
    {
      /* Determine file range covered by the proto-index so far.  Note that
         we always append to both file, i.e. the last index entry also
         corresponds to the last addition in the rev file. */
      const char *path = FUNC7(fs, txn_id, pool);
      apr_file_t *file;
      apr_off_t indexed_length;

      FUNC0(FUNC6(&file, path, pool));
      FUNC0(FUNC5(&indexed_length, file,
                                                     pool));
      FUNC0(FUNC9(file, pool));

      /* Handle mismatches. */
      if (indexed_length < actual_length)
        FUNC0(FUNC10(proto_rev, indexed_length, pool));
      else if (indexed_length > actual_length)
        return FUNC3(SVN_ERR_FS_INDEX_INCONSISTENT,
                                 NULL,
                                 FUNC1("p2l proto index offset %s beyond proto"
                                   "rev file size %s for TXN %s"),
                                   FUNC2(pool, indexed_length),
                                   FUNC2(pool, actual_length),
                                   FUNC4(txn_id, pool));
    }

  return SVN_NO_ERROR;
}