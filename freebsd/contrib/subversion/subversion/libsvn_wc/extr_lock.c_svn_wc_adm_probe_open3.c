
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int * db; } ;
typedef TYPE_1__ svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_20__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (TYPE_2__*) ;
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ;
 TYPE_2__* SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 TYPE_2__* probe (int *,char const**,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 int svn_error_compose (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* svn_error_createf (scalar_t__,int *,int ,int ) ;
 TYPE_2__* svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_dir ;
 TYPE_2__* svn_wc__db_close (int *) ;
 TYPE_2__* svn_wc__db_open (int **,int *,int ,int ,int *,int *) ;
 TYPE_2__* svn_wc_adm_open3 (TYPE_1__**,TYPE_1__*,char const*,int ,int,int ,void*,int *) ;

svn_error_t *
svn_wc_adm_probe_open3(svn_wc_adm_access_t **adm_access,
                       svn_wc_adm_access_t *associated,
                       const char *path,
                       svn_boolean_t write_lock,
                       int levels_to_lock,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *pool)
{
  svn_error_t *err;
  const char *dir;

  if (associated == ((void*)0))
    {
      svn_wc__db_t *db;


      SVN_ERR(svn_wc__db_open(&db,
                              ((void*)0) , FALSE, TRUE, pool, pool));
      err = probe(db, &dir, path, pool);
      svn_error_clear(svn_wc__db_close(db));
      SVN_ERR(err);
    }
  else
    {
      SVN_ERR(probe(associated->db, &dir, path, pool));
    }





  if (dir != path)
    levels_to_lock = 0;

  err = svn_wc_adm_open3(adm_access, associated, dir, write_lock,
                         levels_to_lock, cancel_func, cancel_baton, pool);
  if (err)
    {
      svn_error_t *err2;






      svn_node_kind_t child_kind;
      if ((err2 = svn_io_check_path(path, &child_kind, pool)))
        {
          svn_error_compose(err, err2);
          return err;
        }

      if ((dir != path)
          && (child_kind == svn_node_dir)
          && (err->apr_err == SVN_ERR_WC_NOT_WORKING_COPY))
        {
          svn_error_clear(err);
          return svn_error_createf(SVN_ERR_WC_NOT_WORKING_COPY, ((void*)0),
                                   _("'%s' is not a working copy"),
                                   svn_dirent_local_style(path, pool));
        }

      return err;
    }

  return SVN_NO_ERROR;
}
