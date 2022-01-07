
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int db_provided; int * db; } ;
typedef TYPE_1__ svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int IS_MISSING (TYPE_1__*) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_LOCKED ;
 int TRUE ;
 int _ (char*) ;
 TYPE_1__* get_from_shared (char const*,int *,int *) ;
 int open_all (TYPE_1__**,char const*,int *,int ,int ,int,int ,void*,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_error_trace (int ) ;
 int svn_wc__db_open (int **,int *,int ,int ,int *,int *) ;

svn_error_t *
svn_wc_adm_open3(svn_wc_adm_access_t **adm_access,
                 svn_wc_adm_access_t *associated,
                 const char *path,
                 svn_boolean_t write_lock,
                 int levels_to_lock,
                 svn_cancel_func_t cancel_func,
                 void *cancel_baton,
                 apr_pool_t *pool)
{
  svn_wc__db_t *db;
  svn_boolean_t db_provided;



  if (associated)
    {
      const char *abspath;
      svn_wc_adm_access_t *lock;

      SVN_ERR(svn_dirent_get_absolute(&abspath, path, pool));
      lock = get_from_shared(abspath, associated->db, pool);
      if (lock && !IS_MISSING(lock))




        return svn_error_createf(SVN_ERR_WC_LOCKED, ((void*)0),
                                 _("Working copy '%s' locked"),
                                 svn_dirent_local_style(path, pool));
      db = associated->db;
      db_provided = associated->db_provided;
    }
  else
    {





      SVN_ERR(svn_wc__db_open(&db, ((void*)0) , FALSE, TRUE,
                              pool, pool));
      db_provided = FALSE;
    }

  return svn_error_trace(open_all(adm_access, path, db, db_provided,
                                  write_lock, levels_to_lock,
                                  cancel_func, cancel_baton, pool));
}
