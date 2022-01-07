
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int) ;
 int * svn_error_trace (int ) ;
 scalar_t__ svn_node_dir ;
 int svn_wc__db_external_add_dir (int ,char const*,char const*,char const*,char const*,char const*,char const*,int ,int ,int *,int *) ;

svn_error_t *
svn_wc__external_register(svn_wc_context_t *wc_ctx,
                          const char *defining_abspath,
                          const char *local_abspath,
                          svn_node_kind_t kind,
                          const char *repos_root_url,
                          const char *repos_uuid,
                          const char *repos_relpath,
                          svn_revnum_t operational_revision,
                          svn_revnum_t revision,
                          apr_pool_t *scratch_pool)
{
  SVN_ERR_ASSERT(kind == svn_node_dir);
  return svn_error_trace(
            svn_wc__db_external_add_dir(wc_ctx->db, local_abspath,
                                        defining_abspath,
                                        repos_root_url,
                                        repos_uuid,
                                        defining_abspath,
                                        repos_relpath,
                                        operational_revision,
                                        revision,
                                        ((void*)0),
                                        scratch_pool));
}
