
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int new_version; void* cancel_baton; int cancel_func; TYPE_2__* wcroot; int * db; int add_op_depth; int member_0; } ;
typedef TYPE_1__ update_local_add_baton_t ;
struct TYPE_11__ {int wc_id; int sdb; } ;
typedef TYPE_2__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
struct TYPE_12__ {char const* local_relpath; int skip; TYPE_1__* b; int member_0; } ;
typedef TYPE_3__ added_node_baton_t ;


 int FALSE ;
 int STMT_CREATE_UPDATE_MOVE_LIST ;
 int STMT_DELETE_WORKING_OP_DEPTH ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int relpath_depth (char const*) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,int ) ;
 int svn_sqlite__exec_statements (int ,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__update (int *,int *) ;
 int svn_wc__db_base_get_info_internal (int *,int *,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_2__*,char const*,int *,int *) ;
 int svn_wc__db_fetch_repos_info (char const**,char const**,TYPE_2__*,int ,int *) ;
 int svn_wc__db_op_mark_resolved_internal (TYPE_2__*,char const*,int *,int ,int ,int ,int *,int *) ;
 int svn_wc_conflict_version_create2 (char const*,char const*,char const*,int ,int ,int *) ;
 int update_locally_added_node (TYPE_3__*,int *) ;
 int verify_write_lock (TYPE_2__*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
update_local_add(svn_revnum_t *new_rev,
                svn_wc__db_t *db,
                svn_wc__db_wcroot_t *wcroot,
                const char *local_relpath,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                apr_pool_t *scratch_pool)
{
  update_local_add_baton_t b = { 0 };
  added_node_baton_t nb = { 0 };
  const char *repos_root_url;
  const char *repos_uuid;
  const char *repos_relpath;
  apr_int64_t repos_id;
  svn_node_kind_t new_kind;
  svn_sqlite__stmt_t *stmt;

  b.add_op_depth = relpath_depth(local_relpath);

  SVN_ERR(verify_write_lock(wcroot, local_relpath, scratch_pool));

  b.db = db;
  b.wcroot = wcroot;
  b.cancel_func = cancel_func;
  b.cancel_baton = cancel_baton;


  SVN_ERR(svn_wc__db_base_get_info_internal(((void*)0), &new_kind, new_rev,
                                            &repos_relpath, &repos_id,
                                            ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                            ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                            wcroot, local_relpath,
                                            scratch_pool, scratch_pool));
  SVN_ERR(svn_wc__db_fetch_repos_info(&repos_root_url, &repos_uuid, wcroot,
                                      repos_id, scratch_pool));
  b.new_version = svn_wc_conflict_version_create2(repos_root_url, repos_uuid,
                                                  repos_relpath, *new_rev,
                                                  new_kind, scratch_pool);


  SVN_ERR(svn_sqlite__exec_statements(wcroot->sdb,
                                      STMT_CREATE_UPDATE_MOVE_LIST));


  nb.b = &b;
  nb.local_relpath = local_relpath;
  nb.skip = FALSE;
  SVN_ERR(update_locally_added_node(&nb, scratch_pool));





  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_DELETE_WORKING_OP_DEPTH));
  SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id, local_relpath,
                            relpath_depth(local_relpath)));
  SVN_ERR(svn_sqlite__update(((void*)0), stmt));


  SVN_ERR(svn_wc__db_op_mark_resolved_internal(wcroot, local_relpath, db,
                                               FALSE, FALSE, TRUE,
                                               ((void*)0), scratch_pool));
  return SVN_NO_ERROR;
}
