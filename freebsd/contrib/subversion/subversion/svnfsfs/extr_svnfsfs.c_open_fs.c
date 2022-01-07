
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_UNSUPPORTED_TYPE ;
 int SVN_FS_TYPE_FSFS ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ strcmp (char const*,int ) ;
 char* svn_dirent_join (char const*,char*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_fs_open2 (int **,char const*,int *,int *,int *) ;
 int svn_fs_set_warning_func (int *,int ,int *) ;
 int svn_fs_type (char const**,char const*,int *) ;
 int warning_func ;

svn_error_t *
open_fs(svn_fs_t **fs,
        const char *path,
        apr_pool_t *pool)
{
  const char *fs_type;


  path = svn_dirent_join(path, "db", pool);
  SVN_ERR(svn_fs_type(&fs_type, path, pool));
  if (strcmp(fs_type, SVN_FS_TYPE_FSFS))
    return svn_error_createf(SVN_ERR_FS_UNSUPPORTED_TYPE, ((void*)0),
                             _("%s repositories are not supported"),
                             fs_type);


  SVN_ERR(svn_fs_open2(fs, path, ((void*)0), pool, pool));
  svn_fs_set_warning_func(*fs, warning_func, ((void*)0));

  return SVN_NO_ERROR;
}
