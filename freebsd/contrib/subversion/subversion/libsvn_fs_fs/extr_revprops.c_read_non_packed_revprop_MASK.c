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
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SVN_FS_FS__RECOVERABLE_RETRY_COUNT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(apr_hash_t **properties,
                        svn_fs_t *fs,
                        svn_revnum_t rev,
                        svn_boolean_t populate_cache,
                        apr_pool_t *pool)
{
  svn_stringbuf_t *content = NULL;
  apr_pool_t *iterpool = FUNC6(pool);
  svn_boolean_t missing = FALSE;
  int i;

  for (i = 0;
       i < SVN_FS_FS__RECOVERABLE_RETRY_COUNT && !missing && !content;
       ++i)
    {
      FUNC5(iterpool);
      FUNC0(FUNC4(&content,
                              &missing,
                              FUNC3(fs, rev, iterpool),
                              i + 1 < SVN_FS_FS__RECOVERABLE_RETRY_COUNT ,
                              iterpool));
    }

  if (content)
    {
      svn_string_t *as_string = FUNC7(content);
      FUNC0(FUNC2(properties, fs, rev, as_string, pool, iterpool));

      if (populate_cache)
        FUNC0(FUNC1(NULL, fs, rev, as_string, iterpool));
    }

  FUNC5(iterpool);

  return SVN_NO_ERROR;
}