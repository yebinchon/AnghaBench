#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  change_set; } ;
struct TYPE_8__ {TYPE_2__ noderev_id; } ;
typedef  TYPE_1__ svn_fs_x__noderev_t ;
typedef  TYPE_2__ svn_fs_x__id_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
struct TYPE_10__ {int /*<<< orphan*/  data; } ;

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
 TYPE_6__* FUNC3 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(svn_fs_t *fs,
                            svn_fs_x__noderev_t *noderev,
                            apr_pool_t *scratch_pool)
{
  apr_file_t *noderev_file;
  const svn_fs_x__id_t *id = &noderev->noderev_id;

  if (! FUNC4(id->change_set))
    return FUNC2(SVN_ERR_FS_CORRUPT, NULL,
                             FUNC1("Attempted to write to non-transaction '%s'"),
                             FUNC3(id, scratch_pool)->data);

  FUNC0(FUNC8(&noderev_file,
                           FUNC5(fs, id, scratch_pool,
                                                       scratch_pool),
                           APR_WRITE | APR_CREATE | APR_TRUNCATE
                           | APR_BUFFERED, APR_OS_DEFAULT, scratch_pool));

  FUNC0(FUNC6(FUNC9(noderev_file, TRUE,
                                                           scratch_pool),
                                  noderev, scratch_pool));

  FUNC0(FUNC7(noderev_file, scratch_pool));

  return SVN_NO_ERROR;
}