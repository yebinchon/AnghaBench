
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int svn_node_kind_t ;
struct TYPE_16__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_STATUS_IS_EACCES (scalar_t__) ;
 scalar_t__ FALSE ;
 scalar_t__ IS_MISSING (int *) ;
 int SVN_ERR (TYPE_1__*) ;
 int SVN_ERR_ASSERT (int ) ;
 scalar_t__ SVN_ERR_WC_LOCKED ;
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 int TRUE ;
 TYPE_1__* adm_available (scalar_t__*,int *,int *,char const*,int *) ;
 TYPE_1__* child_is_disjoint (scalar_t__*,int *,char const*,int *) ;
 TYPE_1__* close_single (int *,scalar_t__,int *) ;
 TYPE_1__* open_all (int **,char const*,int *,scalar_t__,scalar_t__,int,int ,void*,int *) ;
 TYPE_1__* open_single (int **,char const*,scalar_t__,int *,scalar_t__,int *,int *) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;
 char* svn_dirent_basename (char const*,int *) ;
 char* svn_dirent_dirname (char const*,int *) ;
 TYPE_1__* svn_dirent_get_absolute (char const**,char const*,int *) ;
 scalar_t__ svn_dirent_is_root (char const*,int ) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 scalar_t__ svn_path_is_empty (char const*) ;
 TYPE_1__* svn_wc__db_open (int **,int *,scalar_t__,int ,int *,int *) ;
 int svn_wc__db_temp_clear_access (int *,char const*,int *) ;
 int * svn_wc__db_temp_get_access (int *,char const*,int *) ;
 TYPE_1__* svn_wc_adm_close2 (int *,int *) ;

__attribute__((used)) static svn_error_t *
open_anchor(svn_wc_adm_access_t **anchor_access,
            svn_wc_adm_access_t **target_access,
            const char **target,
            svn_wc__db_t *db,
            svn_boolean_t db_provided,
            const char *path,
            svn_boolean_t write_lock,
            int levels_to_lock,
            svn_cancel_func_t cancel_func,
            void *cancel_baton,
            apr_pool_t *pool)
{
  const char *base_name = svn_dirent_basename(path, pool);







  if (!db_provided)
    SVN_ERR(svn_wc__db_open(&db, ((void*)0), FALSE, TRUE,
                            pool, pool));

  if (svn_path_is_empty(path)
      || svn_dirent_is_root(path, strlen(path))
      || ! strcmp(base_name, ".."))
    {
      SVN_ERR(open_all(anchor_access, path, db, db_provided,
                       write_lock, levels_to_lock,
                       cancel_func, cancel_baton, pool));
      *target_access = *anchor_access;
      *target = "";
    }
  else
    {
      svn_error_t *err;
      svn_wc_adm_access_t *p_access = ((void*)0);
      svn_wc_adm_access_t *t_access = ((void*)0);
      const char *parent = svn_dirent_dirname(path, pool);
      const char *local_abspath;
      svn_error_t *p_access_err = SVN_NO_ERROR;

      SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));


      err = open_single(&p_access, parent, write_lock, db, db_provided,
                        pool, pool);
      if (err)
        {
          const char *abspath = svn_dirent_dirname(local_abspath, pool);
          svn_wc_adm_access_t *existing_adm = svn_wc__db_temp_get_access(db, abspath, pool);

          if (IS_MISSING(existing_adm))
            svn_wc__db_temp_clear_access(db, abspath, pool);
          else
            SVN_ERR_ASSERT(existing_adm == ((void*)0));

          if (err->apr_err == SVN_ERR_WC_NOT_WORKING_COPY)
            {
              svn_error_clear(err);
              p_access = ((void*)0);
            }
          else if (write_lock && (err->apr_err == SVN_ERR_WC_LOCKED
                                  || APR_STATUS_IS_EACCES(err->apr_err)))
            {


              svn_error_t *err2 = open_single(&p_access, parent, FALSE,
                                              db, db_provided, pool, pool);
              if (err2)
                {
                  svn_error_clear(err2);
                  return err;
                }
              p_access_err = err;
            }
          else
            return err;
        }


      err = open_all(&t_access, path, db, db_provided, write_lock,
                     levels_to_lock, cancel_func, cancel_baton, pool);
      if (err)
        {
          if (p_access == ((void*)0))
            {

              svn_error_clear(p_access_err);
              return svn_error_trace(err);
            }

          if (err->apr_err != SVN_ERR_WC_NOT_WORKING_COPY)
            {
              if (p_access)
                svn_error_clear(svn_wc_adm_close2(p_access, pool));
              svn_error_clear(p_access_err);
              return svn_error_trace(err);
            }


          svn_error_clear(err);
          t_access = ((void*)0);
        }




      if (p_access && t_access)
        {
          svn_boolean_t disjoint;

          err = child_is_disjoint(&disjoint, db, local_abspath, pool);
          if (err)
            {
              svn_error_clear(p_access_err);
              svn_error_clear(svn_wc_adm_close2(p_access, pool));
              svn_error_clear(svn_wc_adm_close2(t_access, pool));
              return svn_error_trace(err);
            }

          if (disjoint)
            {


              err = close_single(p_access, FALSE , pool);
              if (err)
                {
                  svn_error_clear(p_access_err);
                  svn_error_clear(svn_wc_adm_close2(t_access, pool));
                  return svn_error_trace(err);
                }
              p_access = ((void*)0);
            }
        }





      if (p_access && p_access_err)
        {
          if (t_access)
            svn_error_clear(svn_wc_adm_close2(t_access, pool));
          svn_error_clear(svn_wc_adm_close2(p_access, pool));
          return svn_error_trace(p_access_err);
        }
      svn_error_clear(p_access_err);

      if (! t_access)
        {
          svn_boolean_t available;
          svn_node_kind_t kind;

          err = adm_available(&available, &kind, db, local_abspath, pool);

          if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
            svn_error_clear(err);
          else if (err)
            {
              svn_error_clear(svn_wc_adm_close2(p_access, pool));
              return svn_error_trace(err);
            }
        }

      *anchor_access = p_access ? p_access : t_access;
      *target_access = t_access ? t_access : p_access;

      if (! p_access)
        *target = "";
      else
        *target = base_name;
    }

  return SVN_NO_ERROR;
}
