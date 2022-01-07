
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int * copy_helper (int *,char const*,int *,char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
base_copy(svn_fs_root_t *from_root,
          const char *from_path,
          svn_fs_root_t *to_root,
          const char *to_path,
          apr_pool_t *pool)
{
  return copy_helper(from_root, from_path, to_root, to_path, TRUE, pool);
}
