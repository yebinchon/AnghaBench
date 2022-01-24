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
typedef  int /*<<< orphan*/  svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  void* svn_boolean_t ;
struct insert_base_baton_t {char const* repos_root_url; char const* repos_uuid; char const* repos_relpath; int /*<<< orphan*/ * work_items; int /*<<< orphan*/ * conflict; void* delete_working; void* insert_base_deleted; int /*<<< orphan*/  depth; int /*<<< orphan*/  revision; int /*<<< orphan*/  kind; int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct insert_base_baton_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct insert_base_baton_t*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_empty ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 int /*<<< orphan*/  svn_wc__db_status_incomplete ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(svn_wc__db_t *db,
                                         const char *local_abspath,
                                         const char *repos_relpath,
                                         const char *repos_root_url,
                                         const char *repos_uuid,
                                         svn_revnum_t revision,
                                         svn_depth_t depth,
                                         svn_boolean_t insert_base_deleted,
                                         svn_boolean_t delete_working,
                                         svn_skel_t *conflict,
                                         svn_skel_t *work_items,
                                         apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  struct insert_base_baton_t ibb;

  FUNC1(FUNC8(local_abspath));
  FUNC1(FUNC2(revision));
  FUNC1(repos_relpath && repos_root_url && repos_uuid);

  FUNC0(FUNC9(&wcroot, &local_relpath,
                                                db, local_abspath,
                                                scratch_pool, scratch_pool));

  FUNC4(wcroot);

  FUNC5(&ibb);

  /* Calculate repos_id in insert_base_node() to avoid extra transaction */
  ibb.repos_root_url = repos_root_url;
  ibb.repos_uuid = repos_uuid;

  ibb.status = svn_wc__db_status_incomplete;
  ibb.kind = svn_node_dir;
  ibb.repos_relpath = repos_relpath;
  ibb.revision = revision;
  ibb.depth = depth;
  ibb.insert_base_deleted = insert_base_deleted;
  ibb.delete_working = delete_working;

  ibb.conflict = conflict;
  ibb.work_items = work_items;

  FUNC3(
            FUNC7(&ibb, wcroot, local_relpath, scratch_pool),
            wcroot);

  FUNC0(FUNC6(wcroot, local_abspath, svn_depth_empty, scratch_pool));

  return SVN_NO_ERROR;
}