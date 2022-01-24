#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {char const* target; int /*<<< orphan*/  const* work_items; int /*<<< orphan*/  const* new_actual_props; int /*<<< orphan*/  update_actual_props; int /*<<< orphan*/  op_depth; int /*<<< orphan*/  kind; int /*<<< orphan*/  presence; } ;
typedef  TYPE_1__ insert_working_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  svn_depth_empty ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const**,char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_symlink ; 
 char* FUNC11 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc__db_status_normal ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC13(svn_wc__db_t *db,
                          const char *local_abspath,
                          const char *target,
                          const apr_hash_t *props,
                          const svn_skel_t *work_items,
                          apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  insert_working_baton_t iwb;
  const char *dir_abspath;
  const char *name;

  /* Resolve wcroot via parent directory to avoid obstruction handling */
  FUNC1(FUNC9(local_abspath));
  FUNC1(target != NULL);

  FUNC10(&dir_abspath, &name, local_abspath, scratch_pool);

  FUNC0(FUNC12(&wcroot, &local_relpath, db,
                              dir_abspath, scratch_pool, scratch_pool));

  FUNC3(wcroot);

  FUNC5(&iwb);

  local_relpath = FUNC11(local_relpath, name, scratch_pool);
  iwb.presence = svn_wc__db_status_normal;
  iwb.kind = svn_node_symlink;
  iwb.op_depth = FUNC8(local_relpath);
  if (props && FUNC4((apr_hash_t *)props))
    {
      iwb.update_actual_props = TRUE;
      iwb.new_actual_props = props;
    }

  iwb.target = target;

  iwb.work_items = work_items;

  FUNC2(
            FUNC7(&iwb, wcroot, local_relpath, scratch_pool),
            wcroot);
  FUNC0(FUNC6(wcroot, local_abspath, svn_depth_empty, scratch_pool));

  return SVN_NO_ERROR;
}