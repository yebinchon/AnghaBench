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
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {char const* repos_root_url; char const* repos_uuid; char const* repos_relpath; int /*<<< orphan*/  const* work_items; int /*<<< orphan*/  const* conflict; int /*<<< orphan*/ * target; int /*<<< orphan*/ * checksum; int /*<<< orphan*/  depth; int /*<<< orphan*/ * children; int /*<<< orphan*/  revision; int /*<<< orphan*/  kind; scalar_t__ status; } ;
typedef  TYPE_1__ insert_base_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const**,char const**,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC10 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_excluded ; 
 scalar_t__ svn_wc__db_status_not_present ; 
 scalar_t__ svn_wc__db_status_server_excluded ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_wc__db_t *db,
                                 const char *local_abspath,
                                 const char *repos_relpath,
                                 const char *repos_root_url,
                                 const char *repos_uuid,
                                 svn_revnum_t revision,
                                 svn_node_kind_t kind,
                                 svn_wc__db_status_t status,
                                 const svn_skel_t *conflict,
                                 const svn_skel_t *work_items,
                                 apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  insert_base_baton_t ibb;
  const char *dir_abspath, *name;

  FUNC1(FUNC8(local_abspath));
  FUNC1(repos_relpath != NULL);
  FUNC1(FUNC11(repos_root_url, scratch_pool));
  FUNC1(repos_uuid != NULL);
  FUNC1(FUNC2(revision));
  FUNC1(status == svn_wc__db_status_server_excluded
                 || status == svn_wc__db_status_excluded
                 || status == svn_wc__db_status_not_present);

  /* These absent presence nodes are only useful below a parent node that is
     present. To avoid problems with working copies obstructing the child
     we calculate the wcroot and local_relpath of the parent and then add
     our own relpath. */

  FUNC9(&dir_abspath, &name, local_abspath, scratch_pool);

  FUNC0(FUNC12(&wcroot, &local_relpath, db,
                              dir_abspath, scratch_pool, scratch_pool));
  FUNC4(wcroot);

  local_relpath = FUNC10(local_relpath, name, scratch_pool);

  FUNC5(&ibb);

  /* Calculate repos_id in insert_base_node() to avoid extra transaction */
  ibb.repos_root_url = repos_root_url;
  ibb.repos_uuid = repos_uuid;

  ibb.status = status;
  ibb.kind = kind;
  ibb.repos_relpath = repos_relpath;
  ibb.revision = revision;

  /* Depending upon KIND, any of these might get used. */
  ibb.children = NULL;
  ibb.depth = svn_depth_unknown;
  ibb.checksum = NULL;
  ibb.target = NULL;

  ibb.conflict = conflict;
  ibb.work_items = work_items;

  FUNC3(
            FUNC7(&ibb, wcroot, local_relpath, scratch_pool),
            wcroot);

  /* If this used to be a directory we should remove children so pass
   * depth infinity. */
  FUNC0(FUNC6(wcroot, local_abspath, svn_depth_infinity,
                        scratch_pool));

  return SVN_NO_ERROR;
}