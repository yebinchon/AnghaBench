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
struct TYPE_10__ {int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  void* svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_11__ {char const* repos_root_url; char const* repos_uuid; char const* repos_relpath; char const* changed_author; int /*<<< orphan*/ * new_actual_props; int /*<<< orphan*/  update_actual_props; int /*<<< orphan*/  const* work_items; int /*<<< orphan*/  const* conflict; int /*<<< orphan*/ * dav_cache; int /*<<< orphan*/  depth; int /*<<< orphan*/  const* children; int /*<<< orphan*/  changed_date; void* changed_rev; int /*<<< orphan*/  const* props; int /*<<< orphan*/ * iprops; void* revision; int /*<<< orphan*/  kind; int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ insert_base_baton_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc__db_status_normal ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(svn_wc__db_t *db,
                              const char *local_abspath,
                              const char *wri_abspath,
                              const char *repos_relpath,
                              const char *repos_root_url,
                              const char *repos_uuid,
                              svn_revnum_t revision,
                              const apr_hash_t *props,
                              svn_revnum_t changed_rev,
                              apr_time_t changed_date,
                              const char *changed_author,
                              const apr_array_header_t *children,
                              svn_depth_t depth,
                              apr_hash_t *dav_cache,
                              svn_boolean_t update_actual_props,
                              apr_hash_t *new_actual_props,
                              apr_array_header_t *new_iprops,
                              const svn_skel_t *conflict,
                              const svn_skel_t *work_items,
                              apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  insert_base_baton_t ibb;

  FUNC1(FUNC8(local_abspath));
  FUNC1(repos_relpath != NULL);
  FUNC1(FUNC10(repos_root_url, scratch_pool));
  FUNC1(repos_uuid != NULL);
  FUNC1(FUNC2(revision));
  FUNC1(props != NULL);
  FUNC1(FUNC2(changed_rev));
#if 0
  SVN_ERR_ASSERT(children != NULL);
#endif

  FUNC0(FUNC11(&wcroot, &local_relpath, db,
                              wri_abspath, scratch_pool, scratch_pool));
  FUNC4(wcroot);
  local_relpath = FUNC9(wcroot->abspath, local_abspath);

  FUNC5(&ibb);

  /* Calculate repos_id in insert_base_node() to avoid extra transaction */
  ibb.repos_root_url = repos_root_url;
  ibb.repos_uuid = repos_uuid;

  ibb.status = svn_wc__db_status_normal;
  ibb.kind = svn_node_dir;
  ibb.repos_relpath = repos_relpath;
  ibb.revision = revision;

  ibb.iprops = new_iprops;
  ibb.props = props;
  ibb.changed_rev = changed_rev;
  ibb.changed_date = changed_date;
  ibb.changed_author = changed_author;

  ibb.children = children;
  ibb.depth = depth;

  ibb.dav_cache = dav_cache;
  ibb.conflict = conflict;
  ibb.work_items = work_items;

  if (update_actual_props)
    {
      ibb.update_actual_props = TRUE;
      ibb.new_actual_props = new_actual_props;
    }

  /* Insert the directory and all its children transactionally.

     Note: old children can stick around, even if they are no longer present
     in this directory's revision.  */
  FUNC3(
            FUNC7(&ibb, wcroot, local_relpath, scratch_pool),
            wcroot);

  FUNC0(FUNC6(wcroot, local_abspath, depth, scratch_pool));
  return SVN_NO_ERROR;
}