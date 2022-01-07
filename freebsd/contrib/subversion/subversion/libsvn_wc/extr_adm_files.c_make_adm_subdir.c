
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int APR_OS_DEFAULT ;
 int * svn_io_dir_make (char const*,int ,int *) ;
 char* svn_wc__adm_child (char const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
make_adm_subdir(const char *path,
                const char *subdir,
                apr_pool_t *pool)
{
  const char *fullpath;

  fullpath = svn_wc__adm_child(path, subdir, pool);

  return svn_io_dir_make(fullpath, APR_OS_DEFAULT, pool);
}
