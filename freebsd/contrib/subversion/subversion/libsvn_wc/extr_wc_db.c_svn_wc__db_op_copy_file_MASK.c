#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  void* svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_12__ {char const* original_repos_relpath; char const* changed_author; int op_depth; int moved_here; int /*<<< orphan*/  const* conflict; int /*<<< orphan*/  const* work_items; int /*<<< orphan*/  const* new_actual_props; scalar_t__ update_actual_props; int /*<<< orphan*/  const* checksum; int /*<<< orphan*/  original_repos_id; int /*<<< orphan*/  not_present_op_depth; int /*<<< orphan*/  changed_date; void* changed_rev; int /*<<< orphan*/  const* props; void* original_revnum; int /*<<< orphan*/  kind; int /*<<< orphan*/  presence; } ;
typedef  TYPE_2__ insert_working_baton_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,char const*,void*,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_empty ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/  svn_wc__db_status_normal ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(svn_wc__db_t *db,
                        const char *local_abspath,
                        const apr_hash_t *props,
                        svn_revnum_t changed_rev,
                        apr_time_t changed_date,
                        const char *changed_author,
                        const char *original_repos_relpath,
                        const char *original_root_url,
                        const char *original_uuid,
                        svn_revnum_t original_revision,
                        const svn_checksum_t *checksum,
                        svn_boolean_t update_actual_props,
                        const apr_hash_t *new_actual_props,
                        svn_boolean_t is_move,
                        const svn_skel_t *conflict,
                        const svn_skel_t *work_items,
                        apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  insert_working_baton_t iwb;
  int parent_op_depth;

  FUNC1(FUNC9(local_abspath));
  FUNC1(props != NULL);
  /* ### any assertions for CHANGED_* ?  */
  FUNC1((! original_repos_relpath && ! original_root_url
                  && ! original_uuid && ! checksum
                  && original_revision == SVN_INVALID_REVNUM)
                 || (original_repos_relpath && original_root_url
                     && original_uuid && checksum
                     && original_revision != SVN_INVALID_REVNUM));

  FUNC0(FUNC10(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  FUNC3(wcroot);

  FUNC4(&iwb);

  iwb.presence = svn_wc__db_status_normal;
  iwb.kind = svn_node_file;

  if (original_root_url != NULL)
    {
      FUNC0(FUNC5(&iwb.original_repos_id,
                              original_root_url, original_uuid,
                              wcroot->sdb, scratch_pool));
      iwb.original_repos_relpath = original_repos_relpath;
      iwb.original_revnum = original_revision;

      iwb.props = props;
      iwb.changed_rev = changed_rev;
      iwb.changed_date = changed_date;
      iwb.changed_author = changed_author;
    }

  /* ### Should we do this inside the transaction? */
  FUNC0(FUNC8(&iwb.op_depth, &iwb.not_present_op_depth,
                            &parent_op_depth, iwb.original_repos_id,
                            original_repos_relpath, original_revision,
                            wcroot, local_relpath, scratch_pool));

  iwb.checksum = checksum;
  iwb.moved_here = is_move && (parent_op_depth == 0 ||
                               iwb.op_depth == parent_op_depth);

  if (update_actual_props)
    {
      iwb.update_actual_props = update_actual_props;
      iwb.new_actual_props = new_actual_props;
    }

  iwb.work_items = work_items;
  iwb.conflict = conflict;

  FUNC2(
          FUNC7(&iwb, wcroot, local_relpath, scratch_pool),
          wcroot);
  FUNC0(FUNC6(wcroot, local_abspath, svn_depth_empty, scratch_pool));

  return SVN_NO_ERROR;
}