
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_wc__db_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 int TRUE ;
 char* nonexistent_path (char const*,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_compose_create (TYPE_1__*,int ) ;
 int svn_wc__db_close (int *) ;
 TYPE_1__* svn_wc__db_get_wcroot (char const**,int *,char const*,int *,int *) ;
 int svn_wc__db_open (int **,int *,int ,int ,int *,int *) ;
 TYPE_1__* svn_wc__text_base_path_to_read (char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc_get_pristine_copy_path(const char *path,
                              const char **pristine_path,
                              apr_pool_t *pool)
{
  svn_wc__db_t *db;
  const char *local_abspath;
  svn_error_t *err;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));

  SVN_ERR(svn_wc__db_open(&db, ((void*)0), FALSE, TRUE, pool, pool));




  err = svn_wc__text_base_path_to_read(pristine_path, db, local_abspath,
                                       pool, pool);
  if (err && err->apr_err == SVN_ERR_WC_PATH_UNEXPECTED_STATUS)
    {


      const char *wcroot_abspath;

      svn_error_clear(err);

      err = svn_wc__db_get_wcroot(&wcroot_abspath, db, local_abspath,
                                  pool, pool);
      if (err == ((void*)0))
        *pristine_path = nonexistent_path(wcroot_abspath, pool);
    }

   return svn_error_compose_create(err, svn_wc__db_close(db));
}
