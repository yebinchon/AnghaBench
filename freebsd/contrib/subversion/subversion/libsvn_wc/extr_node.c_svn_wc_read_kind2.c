
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 scalar_t__ svn_node_symlink ;
 int svn_wc__db_read_kind (scalar_t__*,int ,char const*,int ,int ,int ,int *) ;

svn_error_t *
svn_wc_read_kind2(svn_node_kind_t *kind,
                  svn_wc_context_t *wc_ctx,
                  const char *local_abspath,
                  svn_boolean_t show_deleted,
                  svn_boolean_t show_hidden,
                  apr_pool_t *scratch_pool)
{
  svn_node_kind_t db_kind;

  SVN_ERR(svn_wc__db_read_kind(&db_kind,
                               wc_ctx->db, local_abspath,
                               TRUE,
                               show_deleted,
                               show_hidden,
                               scratch_pool));

  if (db_kind == svn_node_dir)
    *kind = svn_node_dir;
  else if (db_kind == svn_node_file || db_kind == svn_node_symlink)
    *kind = svn_node_file;
  else
    *kind = svn_node_none;

  return SVN_NO_ERROR;
}
