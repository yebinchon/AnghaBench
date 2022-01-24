#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_11__ {int /*<<< orphan*/  is_fresh_txn_root; } ;
typedef  TYPE_2__ node_revision_t ;
struct TYPE_12__ {int /*<<< orphan*/  format; } ;
typedef  TYPE_3__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
struct TYPE_13__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int APR_BUFFERED ; 
 int APR_CREATE ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int APR_TRUNCATE ; 
 int APR_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 TYPE_8__* FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(svn_fs_t *fs,
                             const svn_fs_id_t *id,
                             node_revision_t *noderev,
                             svn_boolean_t fresh_txn_root,
                             apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  apr_file_t *noderev_file;

  noderev->is_fresh_txn_root = fresh_txn_root;

  if (! FUNC4(id))
    return FUNC2(SVN_ERR_FS_CORRUPT, NULL,
                             FUNC1("Attempted to write to non-transaction '%s'"),
                             FUNC5(id, pool)->data);

  FUNC0(FUNC9(&noderev_file,
                           FUNC6(fs, id, pool),
                           APR_WRITE | APR_CREATE | APR_TRUNCATE
                           | APR_BUFFERED, APR_OS_DEFAULT, pool));

  FUNC0(FUNC7(FUNC10(noderev_file, TRUE,
                                                            pool),
                                   noderev, ffd->format,
                                   FUNC3(fs),
                                   pool));

  FUNC0(FUNC8(noderev_file, pool));

  return SVN_NO_ERROR;
}