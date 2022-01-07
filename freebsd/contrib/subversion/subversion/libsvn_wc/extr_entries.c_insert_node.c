
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {scalar_t__ presence; char* repos_relpath; scalar_t__ kind; char* changed_author; int inherited_props; scalar_t__ file_external; int properties; int recorded_time; int recorded_size; int checksum; int local_relpath; int op_depth; int revision; int repos_id; int changed_date; int changed_rev; int depth; int parent_relpath; int wc_id; } ;
typedef TYPE_1__ db_node_t ;
typedef int apr_pool_t ;


 int STMT_INSERT_NODE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_CORRUPT ;
 int SVN_INVALID_FILESIZE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int kind_map ;
 int presence_map ;
 int * svn_depth_to_word (int ) ;
 int svn_dirent_local_style (int ,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 int svn_sqlite__bind_checksum (int *,int,int ,int *) ;
 int svn_sqlite__bind_int (int *,int,int) ;
 int svn_sqlite__bind_int64 (int *,int,int ) ;
 int svn_sqlite__bind_iprops (int *,int,int ,int *) ;
 int svn_sqlite__bind_properties (int *,int,int ,int *) ;
 int svn_sqlite__bind_revnum (int *,int,int ) ;
 int svn_sqlite__bind_text (int *,int,char*) ;
 int svn_sqlite__bind_token (int *,int,int ,scalar_t__) ;
 int svn_sqlite__bindf (int *,char*,int ,int ,int ,int ,int *) ;
 int svn_sqlite__get_statement (int **,int *,int ) ;
 int svn_sqlite__insert (int *,int *) ;
 scalar_t__ svn_wc__db_status_base_deleted ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_normal ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;

__attribute__((used)) static svn_error_t *
insert_node(svn_sqlite__db_t *sdb,
            const db_node_t *node,
            apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t present = (node->presence == svn_wc__db_status_normal
                           || node->presence == svn_wc__db_status_incomplete);

  SVN_ERR_ASSERT(node->op_depth > 0 || node->repos_relpath);

  SVN_ERR(svn_sqlite__get_statement(&stmt, sdb, STMT_INSERT_NODE));
  SVN_ERR(svn_sqlite__bindf(stmt, "isdsnnnnsn",
                            node->wc_id,
                            node->local_relpath,
                            node->op_depth,
                            node->parent_relpath,

                            (node->kind == svn_node_dir && present)
                              ? svn_depth_to_word(node->depth)
                              : ((void*)0)));

  if (present && node->repos_relpath)
    {
      SVN_ERR(svn_sqlite__bind_revnum(stmt, 11, node->changed_rev));
      SVN_ERR(svn_sqlite__bind_int64(stmt, 12, node->changed_date));
      SVN_ERR(svn_sqlite__bind_text(stmt, 13, node->changed_author));
    }

  if (node->repos_relpath
      && node->presence != svn_wc__db_status_base_deleted)
    {
      SVN_ERR(svn_sqlite__bind_int64(stmt, 5,
                                     node->repos_id));
      SVN_ERR(svn_sqlite__bind_text(stmt, 6,
                                    node->repos_relpath));
      SVN_ERR(svn_sqlite__bind_revnum(stmt, 7, node->revision));
    }

  SVN_ERR(svn_sqlite__bind_token(stmt, 8, presence_map, node->presence));

  if (node->kind == svn_node_none)
    SVN_ERR(svn_sqlite__bind_text(stmt, 10, "unknown"));
  else
    SVN_ERR(svn_sqlite__bind_token(stmt, 10, kind_map, node->kind));

  if (node->kind == svn_node_file && present)
    {
      if (!node->checksum
          && node->op_depth == 0
          && node->presence != svn_wc__db_status_not_present
          && node->presence != svn_wc__db_status_excluded
          && node->presence != svn_wc__db_status_server_excluded)
        return svn_error_createf(SVN_ERR_WC_CORRUPT, ((void*)0),
                                 _("The file '%s' has no checksum"),
                                 svn_dirent_local_style(node->local_relpath,
                                                        scratch_pool));

      SVN_ERR(svn_sqlite__bind_checksum(stmt, 14, node->checksum,
                                        scratch_pool));

      if (node->repos_relpath)
        {
          if (node->recorded_size != SVN_INVALID_FILESIZE)
            SVN_ERR(svn_sqlite__bind_int64(stmt, 16, node->recorded_size));

          SVN_ERR(svn_sqlite__bind_int64(stmt, 17, node->recorded_time));
        }
    }


  if (node->properties && present && node->repos_relpath)
    SVN_ERR(svn_sqlite__bind_properties(stmt, 15, node->properties,
                                        scratch_pool));

  if (node->file_external)
    SVN_ERR(svn_sqlite__bind_int(stmt, 20, 1));

  if (node->inherited_props && present)
    SVN_ERR(svn_sqlite__bind_iprops(stmt, 23, node->inherited_props,
                                    scratch_pool));

  SVN_ERR(svn_sqlite__insert(((void*)0), stmt));

  return SVN_NO_ERROR;
}
