#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_5__ {int /*<<< orphan*/  number; int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct get_and_increment_txn_key_baton {int /*<<< orphan*/  txn_number; int /*<<< orphan*/ * fs; int /*<<< orphan*/ * pool; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  get_and_increment_txn_key_body ; 
 char* FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct get_and_increment_txn_key_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const char **id_p,
               svn_fs_fs__id_part_t *txn_id,
               svn_fs_t *fs,
               svn_revnum_t rev,
               apr_pool_t *pool)
{
  struct get_and_increment_txn_key_baton cb;
  const char *txn_dir;

  /* Get the current transaction sequence value, which is a base-36
     number, from the txn-current file, and write an
     incremented value back out to the file.  Place the revision
     number the transaction is based off into the transaction id. */
  cb.pool = pool;
  cb.fs = fs;
  FUNC0(FUNC3(fs,
                                           get_and_increment_txn_key_body,
                                           &cb,
                                           pool));
  txn_id->revision = rev;
  txn_id->number = cb.txn_number;

  *id_p = FUNC1(txn_id, pool);
  txn_dir = FUNC2(fs, txn_id, pool);

  return FUNC4(txn_dir, APR_OS_DEFAULT, pool);
}