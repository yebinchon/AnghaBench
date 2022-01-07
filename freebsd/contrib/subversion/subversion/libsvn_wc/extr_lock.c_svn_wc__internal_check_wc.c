
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int svn_wc__db_t ;
typedef int svn_wc__db_status_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_12__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int APR_ENOENT ;
 int SVN_ERR (TYPE_1__*) ;
 scalar_t__ SVN_ERR_WC_MISSING ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 scalar_t__ SVN_ERR_WC_UNSUPPORTED_FORMAT ;
 scalar_t__ SVN_ERR_WC_UPGRADE_REQUIRED ;
 TYPE_1__* SVN_NO_ERROR ;
 int SVN_WC__WC_NG_VERSION ;
 int _ (char*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_createf (int ,int *,int ,int ) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 TYPE_1__* svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_none ;
 TYPE_1__* svn_wc__db_read_info (int*,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;



 TYPE_1__* svn_wc__db_temp_get_format (int*,int *,char const*,int *) ;

svn_error_t *
svn_wc__internal_check_wc(int *wc_format,
                          svn_wc__db_t *db,
                          const char *local_abspath,
                          svn_boolean_t check_path,
                          apr_pool_t *scratch_pool)
{
  svn_error_t *err;

  err = svn_wc__db_temp_get_format(wc_format, db, local_abspath, scratch_pool);
  if (err)
    {
      svn_node_kind_t kind;

      if (err->apr_err != SVN_ERR_WC_MISSING &&
          err->apr_err != SVN_ERR_WC_UNSUPPORTED_FORMAT &&
          err->apr_err != SVN_ERR_WC_UPGRADE_REQUIRED)
        return svn_error_trace(err);
      svn_error_clear(err);
      *wc_format = 0;


      SVN_ERR(svn_io_check_path(local_abspath, &kind, scratch_pool));
      if (kind == svn_node_none)
        {
          return svn_error_createf(APR_ENOENT, ((void*)0), _("'%s' does not exist"),
                                   svn_dirent_local_style(local_abspath,
                                                          scratch_pool));
        }
    }

  if (*wc_format >= SVN_WC__WC_NG_VERSION)
    {
      svn_wc__db_status_t db_status;
      svn_node_kind_t db_kind;

      if (check_path)
        {



          svn_node_kind_t wc_kind;

          SVN_ERR(svn_io_check_path(local_abspath, &wc_kind, scratch_pool));
          if (wc_kind != svn_node_dir)
            {
              *wc_format = 0;
              return SVN_NO_ERROR;
            }
        }

      err = svn_wc__db_read_info(&db_status, &db_kind, ((void*)0), ((void*)0), ((void*)0),
                                 ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                 ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                 ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                 ((void*)0), ((void*)0), ((void*)0),
                                 db, local_abspath,
                                 scratch_pool, scratch_pool);

      if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
        {
          svn_error_clear(err);
          *wc_format = 0;
          return SVN_NO_ERROR;
        }
      else
        SVN_ERR(err);

      if (db_kind != svn_node_dir)
        {


          *wc_format = 0;
          return SVN_NO_ERROR;
        }

      switch (db_status)
        {
          case 129:
          case 128:
          case 130:


            *wc_format = 0;
            return SVN_NO_ERROR;
          default:
            break;
        }
    }

  return SVN_NO_ERROR;
}
