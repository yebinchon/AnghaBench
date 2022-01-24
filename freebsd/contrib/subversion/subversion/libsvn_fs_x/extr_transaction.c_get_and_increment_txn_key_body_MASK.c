#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {scalar_t__ txn_number; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_2__ get_and_increment_txn_key_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SVN_INT64_BUFFER_SIZE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(void *baton,
                               apr_pool_t *scratch_pool)
{
  get_and_increment_txn_key_baton_t *cb = baton;
  svn_fs_t *fs = cb->fs;
  apr_pool_t *iterpool = FUNC10(scratch_pool);
  const char *txn_current_path = FUNC3(fs, scratch_pool);
  char new_id_str[SVN_INT64_BUFFER_SIZE];

  svn_stringbuf_t *buf;
  FUNC0(FUNC5(&buf, txn_current_path, scratch_pool));

  /* Parse the txn number, stopping at the next non-digit.
   *
   * Note that an empty string is being interpreted as "0".
   * This gives us implicit recovery if the file contents should be lost
   * due to e.g. power failure.
   */
  cb->txn_number = FUNC1(NULL, buf->data);
  if (cb->txn_number == 0)
    ++cb->txn_number;

  /* Check for conflicts.  Those might happen if the server crashed and we
   * had 'svnadmin recover' reset the txn counter.
   *
   * Once we found an unused txn id, claim it by creating the respective
   * txn directory.
   *
   * Note that this is not racy because we hold the txn-current-lock.
   */
  while (TRUE)
    {
      const char *txn_dir;
      svn_node_kind_t kind;
      FUNC9(iterpool);

      txn_dir = FUNC4(fs, cb->txn_number, iterpool);
      FUNC0(FUNC6(txn_dir, &kind, iterpool));
      if (kind == svn_node_none)
        {
          FUNC7(txn_dir, APR_OS_DEFAULT, iterpool);
          break;
        }

      ++cb->txn_number;
    }

  /* Increment the key and add a trailing \n to the string so the
     txn-current file has a newline in it. */
  FUNC0(FUNC8(txn_current_path, new_id_str,
                               FUNC2(new_id_str,
                                                 cb->txn_number + 1),
                               txn_current_path, FALSE, scratch_pool));

  FUNC11(iterpool);

  return SVN_NO_ERROR;
}