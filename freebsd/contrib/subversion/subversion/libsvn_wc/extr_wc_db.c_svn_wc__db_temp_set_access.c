
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_adm_access_t ;
struct TYPE_3__ {int access_cache; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int ) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_error_clear (int *) ;
 int * svn_hash_gets (int ,char const*) ;
 int svn_hash_sets (int ,char const*,int *) ;
 int * svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

void
svn_wc__db_temp_set_access(svn_wc__db_t *db,
                           const char *local_dir_abspath,
                           svn_wc_adm_access_t *adm_access,
                           apr_pool_t *scratch_pool)
{
  const char *local_relpath;
  svn_wc__db_wcroot_t *wcroot;
  svn_error_t *err;

  SVN_ERR_ASSERT_NO_RETURN(svn_dirent_is_absolute(local_dir_abspath));


  err = svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath,
                            db, local_dir_abspath, scratch_pool, scratch_pool);
  if (err)
    {

      svn_error_clear(err);
      return;
    }


  SVN_ERR_ASSERT_NO_RETURN(
    svn_hash_gets(wcroot->access_cache, local_dir_abspath) == ((void*)0)
  );
  svn_hash_sets(wcroot->access_cache, local_dir_abspath, adm_access);
}
