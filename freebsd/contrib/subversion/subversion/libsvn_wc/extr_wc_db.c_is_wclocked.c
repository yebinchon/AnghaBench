
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int find_wclock (char const**,int *,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
is_wclocked(svn_boolean_t *locked,
            svn_wc__db_wcroot_t *wcroot,
            const char *dir_relpath,
            apr_pool_t *scratch_pool)
{
  const char *lock_relpath;

  SVN_ERR(find_wclock(&lock_relpath, wcroot, dir_relpath,
                      scratch_pool, scratch_pool));
  *locked = (lock_relpath != ((void*)0));
  return SVN_NO_ERROR;
}
