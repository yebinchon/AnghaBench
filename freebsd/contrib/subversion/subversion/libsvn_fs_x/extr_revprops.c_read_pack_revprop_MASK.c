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
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_7__ {int /*<<< orphan*/  revprops; int /*<<< orphan*/  entry; int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ packed_revprops_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NO_SUCH_REVISION ; 
 int /*<<< orphan*/  SVN_ERR_FS_PACKED_REVPROP_READ_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SVN_FS_X__RECOVERABLE_RETRY_COUNT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC16(packed_revprops_t **revprops,
                  svn_fs_t *fs,
                  svn_revnum_t rev,
                  svn_boolean_t read_all,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = FUNC15(scratch_pool);
  svn_boolean_t missing = FALSE;
  packed_revprops_t *result;
  int i;

  /* someone insisted that REV is packed. Double-check if necessary */
  if (!FUNC11(fs, rev))
     FUNC0(FUNC13(fs, iterpool));

  if (!FUNC11(fs, rev))
    return FUNC10(SVN_ERR_FS_NO_SUCH_REVISION, NULL,
                              FUNC2("No such packed revision %ld"), rev);

  /* initialize the result data structure */
  result = FUNC3(result_pool, sizeof(*result));
  result->revision = rev;

  /* try to read the packed revprops. This may require retries if we have
   * concurrent writers. */
  for (i = 0; i < SVN_FS_X__RECOVERABLE_RETRY_COUNT; ++i)
    {
      const char *file_path;
      svn_stringbuf_t *contents = NULL;

      FUNC14(iterpool);

      /* there might have been concurrent writes.
       * Re-read the manifest and the pack file.
       */
      FUNC0(FUNC6(fs, result, result_pool, iterpool));
      file_path = FUNC5(result, &result->entry,
                                            iterpool);
      FUNC0(FUNC12(&contents,
                                &missing,
                                file_path,
                                i + 1 < SVN_FS_X__RECOVERABLE_RETRY_COUNT,
                                iterpool));

      if (contents)
        {
          FUNC1(FUNC8(fs, result, contents, read_all,
                                          result_pool, iterpool),
                    FUNC4(iterpool,
                                 "Revprop pack file for r%ld is corrupt",
                                 rev));
          break;
        }

      /* If we could not find the file, there was a write.
       * So, we should refresh our revprop generation info as well such
       * that others may find data we will put into the cache.  They would
       * consider it outdated, otherwise.
       */
      if (missing && FUNC7(fs, iterpool))
        FUNC0(FUNC9(fs, iterpool));
    }

  /* the file content should be available now */
  if (!result->revprops)
    return FUNC10(SVN_ERR_FS_PACKED_REVPROP_READ_FAILURE, NULL,
                  FUNC2("Failed to read revprop pack file for r%ld"), rev);

  *revprops = result;

  return SVN_NO_ERROR;
}