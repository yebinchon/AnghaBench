
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int db; int path; } ;
typedef TYPE_1__ svn_wc_adm_access_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_17__ {int message; } ;
typedef TYPE_2__ svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_NOT_LOCKED ;
 int SVN_ERR_WC_NOT_WORKING_COPY ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_2__* SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ strcmp (int ,char const*) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_create (int ,TYPE_2__*,int ) ;
 TYPE_2__* svn_error_createf (int ,TYPE_2__*,int ,int ) ;
 TYPE_2__* svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 scalar_t__ svn_node_unknown ;
 int svn_wc__adm_get_db (TYPE_1__*) ;
 TYPE_1__* svn_wc__adm_retrieve_internal2 (int ,char const*,int *) ;
 TYPE_2__* svn_wc__db_read_kind (scalar_t__*,int ,char const*,int ,int ,int ,int *) ;

svn_error_t *
svn_wc_adm_retrieve(svn_wc_adm_access_t **adm_access,
                    svn_wc_adm_access_t *associated,
                    const char *path,
                    apr_pool_t *pool)
{
  const char *local_abspath;
  svn_node_kind_t kind = svn_node_unknown;
  svn_node_kind_t wckind;
  svn_error_t *err;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));

  if (strcmp(associated->path, path) == 0)
    *adm_access = associated;
  else
    *adm_access = svn_wc__adm_retrieve_internal2(associated->db, local_abspath,
                                                 pool);


  if (*adm_access)
    return SVN_NO_ERROR;







  err = svn_io_check_path(path, &wckind, pool);


  if (err)
    {
      return svn_error_createf(SVN_ERR_WC_NOT_LOCKED, err,
                               _("Unable to check path existence for '%s'"),
                               svn_dirent_local_style(path, pool));
    }

  if (associated)
    {
      err = svn_wc__db_read_kind(&kind, svn_wc__adm_get_db(associated),
                                 local_abspath,
                                 TRUE ,
                                 TRUE ,
                                 FALSE , pool);

      if (err)
        {
          kind = svn_node_unknown;
          svn_error_clear(err);
        }
    }

  if (kind == svn_node_dir && wckind == svn_node_file)
    {
      err = svn_error_createf(
               SVN_ERR_WC_NOT_WORKING_COPY, ((void*)0),
               _("Expected '%s' to be a directory but found a file"),
               svn_dirent_local_style(path, pool));

      return svn_error_create(SVN_ERR_WC_NOT_LOCKED, err, err->message);
    }

  if (kind != svn_node_dir && kind != svn_node_unknown)
    {
      err = svn_error_createf(
               SVN_ERR_WC_NOT_WORKING_COPY, ((void*)0),
               _("Can't retrieve an access baton for non-directory '%s'"),
               svn_dirent_local_style(path, pool));

      return svn_error_create(SVN_ERR_WC_NOT_LOCKED, err, err->message);
    }

  if (kind == svn_node_unknown || wckind == svn_node_none)
    {
      err = svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                              _("Directory '%s' is missing"),
                              svn_dirent_local_style(path, pool));

      return svn_error_create(SVN_ERR_WC_NOT_LOCKED, err, err->message);
    }


  return svn_error_createf(SVN_ERR_WC_NOT_LOCKED, ((void*)0),
                           _("Working copy '%s' is not locked"),
                           svn_dirent_local_style(path, pool));
}
