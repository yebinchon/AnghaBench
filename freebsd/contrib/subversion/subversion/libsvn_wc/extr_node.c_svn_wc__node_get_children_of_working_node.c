
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int make_absolute (int const**,char const*,int const*,int *) ;
 int svn_wc__db_read_children_of_working_node (int const**,int ,char const*,int *,int *) ;

svn_error_t *
svn_wc__node_get_children_of_working_node(const apr_array_header_t **children,
                                          svn_wc_context_t *wc_ctx,
                                          const char *dir_abspath,
                                          apr_pool_t *result_pool,
                                          apr_pool_t *scratch_pool)
{
  const apr_array_header_t *child_names;

  SVN_ERR(svn_wc__db_read_children_of_working_node(&child_names,
                                                   wc_ctx->db, dir_abspath,
                                                   scratch_pool, scratch_pool));
  make_absolute(children, dir_abspath, child_names, result_pool);
  return SVN_NO_ERROR;
}
