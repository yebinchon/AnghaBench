
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_wc__db_temp_wcroot_tempdir (char const**,int ,char const*,int *,int *) ;

svn_error_t *
svn_wc__get_tmpdir(const char **tmpdir_abspath,
                   svn_wc_context_t *wc_ctx,
                   const char *wri_abspath,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  SVN_ERR(svn_wc__db_temp_wcroot_tempdir(tmpdir_abspath,
                                         wc_ctx->db, wri_abspath,
                                         result_pool, scratch_pool));
  return SVN_NO_ERROR;
}
