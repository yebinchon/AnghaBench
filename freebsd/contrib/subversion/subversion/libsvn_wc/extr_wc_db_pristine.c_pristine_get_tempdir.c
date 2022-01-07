
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int apr_pool_t ;


 int PRISTINE_TEMPDIR_RELPATH ;
 int SVN_VA_NULL ;
 char* svn_dirent_join_many (int *,int ,int ,int ,int ) ;
 int svn_wc_get_adm_dir (int *) ;

__attribute__((used)) static char *
pristine_get_tempdir(svn_wc__db_wcroot_t *wcroot,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  return svn_dirent_join_many(result_pool, wcroot->abspath,
                              svn_wc_get_adm_dir(scratch_pool),
                              PRISTINE_TEMPDIR_RELPATH, SVN_VA_NULL);
}
