#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_fs_x__noderev_t ;
typedef  int /*<<< orphan*/  svn_fs_x__id_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_11__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/  SVN_FS_X__ITEM_TYPE_NODEREV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (scalar_t__,TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(svn_fs_x__noderev_t **noderev_p,
                            svn_fs_t *fs,
                            const svn_fs_x__id_t *id,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  svn_error_t *err = FUNC2(noderev_p, fs, id,
                                            result_pool, scratch_pool);
  if (err && err->apr_err == SVN_ERR_FS_CORRUPT)
    {
      svn_string_t *id_string = FUNC5(id, scratch_pool);
      return FUNC3(SVN_ERR_FS_CORRUPT, err,
                               "Corrupt node-revision '%s'",
                               id_string->data);
    }

  FUNC0(FUNC1(fs, id, *noderev_p,
                          SVN_FS_X__ITEM_TYPE_NODEREV, scratch_pool));

  return FUNC4(err);
}