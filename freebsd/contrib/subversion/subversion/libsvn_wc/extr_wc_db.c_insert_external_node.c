
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_sqlite__stmt_t ;
struct TYPE_16__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_boolean_t ;
struct insert_base_baton_t {scalar_t__ kind; scalar_t__ repos_id; int file_external; int work_items; int keep_recorded_info; int new_actual_props; int update_actual_props; int conflict; int target; int checksum; int dav_cache; int changed_author; int changed_date; int changed_rev; int iprops; int props; int revision; int repos_relpath; scalar_t__ status; } ;
struct TYPE_17__ {scalar_t__ repos_id; scalar_t__ kind; scalar_t__ presence; int recorded_revision; int recorded_peg_revision; int recorded_repos_relpath; int record_ancestor_relpath; int work_items; int keep_recorded_info; int new_actual_props; int update_actual_props; int conflict; int target; int checksum; int dav_cache; int changed_author; int changed_date; int changed_rev; int iprops; int props; int revision; int repos_relpath; int repos_uuid; int repos_root_url; } ;
typedef TYPE_3__ insert_external_baton_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;


 scalar_t__ INVALID_REPOS_ID ;
 int STMT_INSERT_EXTERNAL ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 int SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 TYPE_2__* SVN_NO_ERROR ;
 int TRUE ;
 int add_work_items (int ,int ,int *) ;
 int blank_ibb (struct insert_base_baton_t*) ;
 int create_repos_id (scalar_t__*,int ,int ,int ,int *) ;
 int insert_base_node (struct insert_base_baton_t*,TYPE_1__*,char const*,int *) ;
 int kind_map ;
 int presence_map ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_create (int ,int *,int *) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_symlink ;
 int svn_relpath_dirname (char const*,int *) ;
 int svn_sqlite__bind_revnum (int *,int,int ) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,int ,int ,scalar_t__,int ,scalar_t__,int ,scalar_t__,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__insert (int *,int *) ;
 TYPE_2__* svn_wc__db_base_get_info_internal (scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_1__*,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_normal ;

__attribute__((used)) static svn_error_t *
insert_external_node(const insert_external_baton_t *ieb,
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
    SVN_ERR(create_repos_id(&repos_id, ieb->repos_root_url, ieb->repos_uuid,
                            wcroot->sdb, scratch_pool));


  err = svn_wc__db_base_get_info_internal(&status, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                          ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                          ((void*)0), ((void*)0), ((void*)0), ((void*)0), &update_root,
                                          wcroot, local_relpath,
                                          scratch_pool, scratch_pool);
  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return svn_error_trace(err);

      svn_error_clear(err);
    }
  else if (status == svn_wc__db_status_normal && !update_root)
    return svn_error_create(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, ((void*)0), ((void*)0));

  if (ieb->kind == svn_node_file
      || ieb->kind == svn_node_symlink)
    {
      struct insert_base_baton_t ibb;

      blank_ibb(&ibb);

      ibb.status = svn_wc__db_status_normal;
      ibb.kind = ieb->kind;

      ibb.repos_id = repos_id;
      ibb.repos_relpath = ieb->repos_relpath;
      ibb.revision = ieb->revision;

      ibb.props = ieb->props;
      ibb.iprops = ieb->iprops;
      ibb.changed_rev = ieb->changed_rev;
      ibb.changed_date = ieb->changed_date;
      ibb.changed_author = ieb->changed_author;

      ibb.dav_cache = ieb->dav_cache;

      ibb.checksum = ieb->checksum;
      ibb.target = ieb->target;

      ibb.conflict = ieb->conflict;

      ibb.update_actual_props = ieb->update_actual_props;
      ibb.new_actual_props = ieb->new_actual_props;

      ibb.keep_recorded_info = ieb->keep_recorded_info;

      ibb.work_items = ieb->work_items;

      ibb.file_external = TRUE;

      SVN_ERR(insert_base_node(&ibb, wcroot, local_relpath, scratch_pool));
    }
  else
    SVN_ERR(add_work_items(wcroot->sdb, ieb->work_items, scratch_pool));


  SVN_ERR_ASSERT(ieb->presence == svn_wc__db_status_normal
                 || ieb->presence == svn_wc__db_status_excluded);

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb, STMT_INSERT_EXTERNAL));

  SVN_ERR(svn_sqlite__bindf(stmt, "issttsis",
                            wcroot->wc_id,
                            local_relpath,
                            svn_relpath_dirname(local_relpath,
                                                scratch_pool),
                            presence_map, ieb->presence,
                            kind_map, ieb->kind,
                            ieb->record_ancestor_relpath,
                            repos_id,
                            ieb->recorded_repos_relpath));

  if (SVN_IS_VALID_REVNUM(ieb->recorded_peg_revision))
    SVN_ERR(svn_sqlite__bind_revnum(stmt, 9, ieb->recorded_peg_revision));

  if (SVN_IS_VALID_REVNUM(ieb->recorded_revision))
    SVN_ERR(svn_sqlite__bind_revnum(stmt, 10, ieb->recorded_revision));

  SVN_ERR(svn_sqlite__insert(((void*)0), stmt));

  return SVN_NO_ERROR;
}
