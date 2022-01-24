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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_6__ {int /*<<< orphan*/  packed_revprops; int /*<<< orphan*/  filename; int /*<<< orphan*/  folder; int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ packed_revprops_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/  SVN_ERR_FS_NO_SUCH_REVISION ; 
 int /*<<< orphan*/  SVN_ERR_FS_PACKED_REVPROP_READ_FAILURE ; 
 int SVN_FS_FS__RECOVERABLE_RETRY_COUNT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(packed_revprops_t **revprops,
                  svn_fs_t *fs,
                  svn_revnum_t rev,
                  svn_boolean_t read_all,
                  svn_boolean_t populate_cache,
                  apr_pool_t *pool)
{
  apr_pool_t *iterpool = FUNC11(pool);
  svn_boolean_t missing = FALSE;
  svn_error_t *err;
  packed_revprops_t *result;
  int i;

  /* someone insisted that REV is packed. Double-check if necessary */
  if (!FUNC7(fs, rev))
     FUNC0(FUNC9(fs, iterpool));

  if (!FUNC7(fs, rev))
    return FUNC6(SVN_ERR_FS_NO_SUCH_REVISION, NULL,
                              FUNC1("No such packed revision %ld"), rev);

  /* initialize the result data structure */
  result = FUNC2(pool, sizeof(*result));
  result->revision = rev;

  /* try to read the packed revprops. This may require retries if we have
   * concurrent writers. */
  for (i = 0;
       i < SVN_FS_FS__RECOVERABLE_RETRY_COUNT && !result->packed_revprops;
       ++i)
    {
      const char *file_path;
      FUNC10(iterpool);

      /* there might have been concurrent writes.
       * Re-read the manifest and the pack file.
       */
      FUNC0(FUNC3(fs, result, pool, iterpool));
      file_path  = FUNC5(result->folder,
                                   result->filename,
                                   iterpool);
      FUNC0(FUNC8(&result->packed_revprops,
                                &missing,
                                file_path,
                                i + 1 < SVN_FS_FS__RECOVERABLE_RETRY_COUNT,
                                pool));
    }

  /* the file content should be available now */
  if (!result->packed_revprops)
    return FUNC6(SVN_ERR_FS_PACKED_REVPROP_READ_FAILURE, NULL,
                  FUNC1("Failed to read revprop pack file for r%ld"), rev);

  /* parse it. RESULT will be complete afterwards. */
  err = FUNC4(fs, result, read_all, populate_cache, pool,
                              iterpool);
  FUNC12(iterpool);
  if (err)
    return FUNC6(SVN_ERR_FS_CORRUPT, err,
                  FUNC1("Revprop pack file for r%ld is corrupt"), rev);

  *revprops = result;

  return SVN_NO_ERROR;
}