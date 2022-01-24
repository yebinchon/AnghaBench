#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
struct TYPE_16__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct insert_base_baton_t {scalar_t__ kind; scalar_t__ repos_id; int /*<<< orphan*/  file_external; int /*<<< orphan*/  work_items; int /*<<< orphan*/  keep_recorded_info; int /*<<< orphan*/  new_actual_props; int /*<<< orphan*/  update_actual_props; int /*<<< orphan*/  conflict; int /*<<< orphan*/  target; int /*<<< orphan*/  checksum; int /*<<< orphan*/  dav_cache; int /*<<< orphan*/  changed_author; int /*<<< orphan*/  changed_date; int /*<<< orphan*/  changed_rev; int /*<<< orphan*/  iprops; int /*<<< orphan*/  props; int /*<<< orphan*/  revision; int /*<<< orphan*/  repos_relpath; scalar_t__ status; } ;
struct TYPE_17__ {scalar_t__ repos_id; scalar_t__ kind; scalar_t__ presence; int /*<<< orphan*/  recorded_revision; int /*<<< orphan*/  recorded_peg_revision; int /*<<< orphan*/  recorded_repos_relpath; int /*<<< orphan*/  record_ancestor_relpath; int /*<<< orphan*/  work_items; int /*<<< orphan*/  keep_recorded_info; int /*<<< orphan*/  new_actual_props; int /*<<< orphan*/  update_actual_props; int /*<<< orphan*/  conflict; int /*<<< orphan*/  target; int /*<<< orphan*/  checksum; int /*<<< orphan*/  dav_cache; int /*<<< orphan*/  changed_author; int /*<<< orphan*/  changed_date; int /*<<< orphan*/  changed_rev; int /*<<< orphan*/  iprops; int /*<<< orphan*/  props; int /*<<< orphan*/  revision; int /*<<< orphan*/  repos_relpath; int /*<<< orphan*/  repos_uuid; int /*<<< orphan*/  repos_root_url; } ;
typedef  TYPE_3__ insert_external_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;

/* Variables and functions */
 scalar_t__ INVALID_REPOS_ID ; 
 int /*<<< orphan*/  STMT_INSERT_EXTERNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct insert_base_baton_t*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct insert_base_baton_t*,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kind_map ; 
 int /*<<< orphan*/  presence_map ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (TYPE_2__*) ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_symlink ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC15 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_excluded ; 
 scalar_t__ svn_wc__db_status_normal ; 

__attribute__((used)) static svn_error_t *
FUNC16(const insert_external_baton_t *ieb,
                     svn_wc__db_wcroot_t *wcroot,
                     const char *local_relpath,
                     apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;
  svn_error_t *err;
  svn_boolean_t update_root;
  apr_int64_t repos_id;
  svn_sqlite__stmt_t *stmt;

  if (ieb->repos_id != INVALID_REPOS_ID)
    repos_id = ieb->repos_id;
  else
    FUNC0(FUNC5(&repos_id, ieb->repos_root_url, ieb->repos_uuid,
                            wcroot->sdb, scratch_pool));

  /* And there must be no existing BASE node or it must be a file external */
  err = FUNC15(&status, NULL, NULL, NULL, NULL,
                                          NULL, NULL, NULL, NULL, NULL,
                                          NULL, NULL, NULL, NULL, &update_root,
                                          wcroot, local_relpath,
                                          scratch_pool, scratch_pool);
  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return FUNC9(err);

      FUNC7(err);
    }
  else if (status == svn_wc__db_status_normal && !update_root)
    return FUNC8(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, NULL, NULL);

  if (ieb->kind == svn_node_file
      || ieb->kind == svn_node_symlink)
    {
      struct insert_base_baton_t ibb;

      FUNC4(&ibb);

      ibb.status          = svn_wc__db_status_normal;
      ibb.kind            = ieb->kind;

      ibb.repos_id        = repos_id;
      ibb.repos_relpath   = ieb->repos_relpath;
      ibb.revision        = ieb->revision;

      ibb.props           = ieb->props;
      ibb.iprops          = ieb->iprops;
      ibb.changed_rev     = ieb->changed_rev;
      ibb.changed_date    = ieb->changed_date;
      ibb.changed_author  = ieb->changed_author;

      ibb.dav_cache       = ieb->dav_cache;

      ibb.checksum        = ieb->checksum;
      ibb.target          = ieb->target;

      ibb.conflict        = ieb->conflict;

      ibb.update_actual_props = ieb->update_actual_props;
      ibb.new_actual_props    = ieb->new_actual_props;

      ibb.keep_recorded_info  = ieb->keep_recorded_info;

      ibb.work_items      = ieb->work_items;

      ibb.file_external = TRUE;

      FUNC0(FUNC6(&ibb, wcroot, local_relpath, scratch_pool));
    }
  else
    FUNC0(FUNC3(wcroot->sdb, ieb->work_items, scratch_pool));

  /* The externals table only support presence normal and excluded */
  FUNC1(ieb->presence == svn_wc__db_status_normal
                 || ieb->presence == svn_wc__db_status_excluded);

  FUNC0(FUNC13(&stmt, wcroot->sdb, STMT_INSERT_EXTERNAL));

  FUNC0(FUNC12(stmt, "issttsis",
                            wcroot->wc_id,
                            local_relpath,
                            FUNC10(local_relpath,
                                                scratch_pool),
                            presence_map, ieb->presence,
                            kind_map, ieb->kind,
                            ieb->record_ancestor_relpath,
                            repos_id,
                            ieb->recorded_repos_relpath));

  if (FUNC2(ieb->recorded_peg_revision))
    FUNC0(FUNC11(stmt, 9, ieb->recorded_peg_revision));

  if (FUNC2(ieb->recorded_revision))
    FUNC0(FUNC11(stmt, 10, ieb->recorded_revision));

  FUNC0(FUNC14(NULL, stmt));

  return SVN_NO_ERROR;
}