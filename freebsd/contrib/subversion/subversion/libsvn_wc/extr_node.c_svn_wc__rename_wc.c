
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int strcmp (char const*,char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ,int ) ;
 int svn_io_file_rename2 (char const*,char const*,int ,int *) ;
 int svn_wc__db_drop_root (int ,char const*,int *) ;
 int svn_wc__db_get_wcroot (char const**,int ,char const*,int *,int *) ;

svn_error_t *
svn_wc__rename_wc(svn_wc_context_t *wc_ctx,
                  const char *from_abspath,
                  const char *dst_abspath,
                  apr_pool_t *scratch_pool)
{
  const char *wcroot_abspath;
  SVN_ERR(svn_wc__db_get_wcroot(&wcroot_abspath, wc_ctx->db, from_abspath,
                                scratch_pool, scratch_pool));

  if (! strcmp(from_abspath, wcroot_abspath))
    {
      SVN_ERR(svn_wc__db_drop_root(wc_ctx->db, wcroot_abspath, scratch_pool));

      SVN_ERR(svn_io_file_rename2(from_abspath, dst_abspath, FALSE,
                                  scratch_pool));
    }
  else
    return svn_error_createf(
                    SVN_ERR_WC_PATH_UNEXPECTED_STATUS, ((void*)0),
                    _("'%s' is not the root of the working copy '%s'"),
                    svn_dirent_local_style(from_abspath, scratch_pool),
                    svn_dirent_local_style(wcroot_abspath, scratch_pool));

  return SVN_NO_ERROR;
}
