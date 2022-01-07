
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int fs_library_vtable_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_library_vtable (int **,char const*,int *) ;
 int svn_fs_type (char const**,char const*,int *) ;

__attribute__((used)) static svn_error_t *
fs_library_vtable(fs_library_vtable_t **vtable, const char *path,
                  apr_pool_t *pool)
{
  const char *fs_type;

  SVN_ERR(svn_fs_type(&fs_type, path, pool));


  SVN_ERR(get_library_vtable(vtable, fs_type, pool));

  return SVN_NO_ERROR;
}
