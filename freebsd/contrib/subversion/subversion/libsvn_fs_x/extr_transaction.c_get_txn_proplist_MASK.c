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
typedef  scalar_t__ svn_fs_x__txn_id_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_INCORRECT_PARAMS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_FS_X__INVALID_TXN_ID ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(apr_hash_t **proplist,
                 svn_fs_t *fs,
                 svn_fs_x__txn_id_t txn_id,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *content;

  /* Check for issue #3696. (When we find and fix the cause, we can change
   * this to an assertion.) */
  if (txn_id == SVN_FS_X__INVALID_TXN_ID)
    return FUNC4(SVN_ERR_INCORRECT_PARAMS, NULL,
                            FUNC2("Internal error: a null transaction id was "
                              "passed to get_txn_proplist()"));

  /* Open the transaction properties file. */
  FUNC0(FUNC8(&content,
                                   FUNC6(fs, txn_id,
                                                            scratch_pool),
                                   result_pool));

  /* Read in the property list. */
  FUNC1(FUNC5(proplist,
                                   FUNC7(content),
                                   result_pool),
            FUNC3(scratch_pool,
                         FUNC2("malformed property list in transaction '%s'"),
                         FUNC6(fs, txn_id, scratch_pool)));

  return SVN_NO_ERROR;
}