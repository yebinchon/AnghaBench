#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_9__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_txn_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_10__ {int /*<<< orphan*/  txn_id; } ;
typedef  TYPE_3__ fs_txn_data_t ;
typedef  int apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SVN_FS_TXN_CHECK_LOCKS ; 
 int SVN_FS_TXN_CHECK_OOD ; 
 int SVN_FS_TXN_CLIENT_DATE ; 
 int /*<<< orphan*/  SVN_FS__PROP_TXN_CHECK_LOCKS ; 
 int /*<<< orphan*/  SVN_FS__PROP_TXN_CHECK_OOD ; 
 int /*<<< orphan*/  SVN_FS__PROP_TXN_CLIENT_DATE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_DATE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(svn_fs_txn_t **txn_p,
                    svn_fs_t *fs,
                    svn_revnum_t rev,
                    apr_uint32_t flags,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  svn_string_t date;
  fs_txn_data_t *ftd;
  apr_hash_t *props = FUNC1(scratch_pool);

  FUNC0(FUNC6(fs, TRUE));

  FUNC0(FUNC3(txn_p, fs, rev, result_pool, scratch_pool));

  /* Put a datestamp on the newly created txn, so we always know
     exactly how old it is.  (This will help sysadmins identify
     long-abandoned txns that may need to be manually removed.)  When
     a txn is promoted to a revision, this property will be
     automatically overwritten with a revision datestamp. */
  date.data = FUNC9(FUNC2(), scratch_pool);
  date.len = FUNC5(date.data);

  FUNC7(props, SVN_PROP_REVISION_DATE, &date);

  /* Set temporary txn props that represent the requested 'flags'
     behaviors. */
  if (flags & SVN_FS_TXN_CHECK_OOD)
    FUNC7(props, SVN_FS__PROP_TXN_CHECK_OOD,
                  FUNC8("true", scratch_pool));

  if (flags & SVN_FS_TXN_CHECK_LOCKS)
    FUNC7(props, SVN_FS__PROP_TXN_CHECK_LOCKS,
                  FUNC8("true", scratch_pool));

  if (flags & SVN_FS_TXN_CLIENT_DATE)
    FUNC7(props, SVN_FS__PROP_TXN_CLIENT_DATE,
                  FUNC8("0", scratch_pool));

  ftd = (*txn_p)->fsap_data;
  FUNC0(FUNC4(fs, ftd->txn_id, props, scratch_pool));

  return SVN_NO_ERROR;
}