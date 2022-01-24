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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_INCORRECT_PARAMS ; 
 int /*<<< orphan*/  SVN_HASH_TERMINATOR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(apr_hash_t *proplist,
                 svn_fs_t *fs,
                 const svn_fs_fs__id_part_t *txn_id,
                 apr_pool_t *pool)
{
  svn_stream_t *stream;
  svn_error_t *err;

  /* Check for issue #3696. (When we find and fix the cause, we can change
   * this to an assertion.) */
  if (!txn_id || !FUNC6(txn_id))
    return FUNC4(SVN_ERR_INCORRECT_PARAMS, NULL,
                            FUNC1("Internal error: a null transaction id was "
                              "passed to get_txn_proplist()"));

  /* Open the transaction properties file. */
  FUNC0(FUNC9(&stream, FUNC2(fs, txn_id, pool),
                                   pool, pool));

  /* Read in the property list. */
  err = FUNC7(proplist, stream, SVN_HASH_TERMINATOR, pool);
  if (err)
    {
      err = FUNC3(err, FUNC8(stream));
      return FUNC5(err,
               FUNC1("malformed property list in transaction '%s'"),
               FUNC2(fs, txn_id, pool));
    }

  return FUNC8(stream);
}