#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_8__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct rev_get_txn_id_args {char const** txn_id; scalar_t__ revision; } ;
struct TYPE_9__ {scalar_t__ format; } ;
typedef  TYPE_2__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 scalar_t__ SVN_FS_BASE__MIN_MISCELLANY_FORMAT ; 
 int /*<<< orphan*/  SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char const**,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,struct rev_get_txn_id_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_rev_get_txn_id ; 

svn_error_t *
FUNC8(svn_fs_t *fs,
                     svn_revnum_t revision,
                     apr_pool_t *pool)
{
  svn_fs_root_t *root;
  const char *txn_id;
  struct rev_get_txn_id_args args;
  base_fs_data_t *bfd = fs->fsap_data;

  if (bfd->format >= SVN_FS_BASE__MIN_MISCELLANY_FORMAT)
    {
      const char *val;
      svn_revnum_t forward_delta_rev = 0;

      FUNC0(FUNC4
              (&val, fs, SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE, pool));
      if (val)
        FUNC0(FUNC7(&forward_delta_rev, val, NULL));

      /* ### FIXME:  Unnecessarily harsh requirement? (cmpilato). */
      if (revision <= forward_delta_rev)
        return FUNC3
          (SVN_ERR_UNSUPPORTED_FEATURE, NULL,
           FUNC1("Cannot deltify revisions prior to r%ld"), forward_delta_rev+1);
    }

  FUNC0(FUNC6(&root, fs, revision, pool));

  args.txn_id = &txn_id;
  args.revision = revision;
  FUNC0(FUNC5(fs, txn_body_rev_get_txn_id, &args,
                                 FALSE, pool));

  return FUNC2(fs, root, "/", NULL, svn_node_dir, txn_id, pool);
}