
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int * add_file_or_directory (char const*,void*,char const*,int ,int ,int *,void**) ;

__attribute__((used)) static svn_error_t *
add_directory(const char *path,
              void *parent_baton,
              const char *copy_path,
              svn_revnum_t copy_revision,
              apr_pool_t *pool,
              void **child_baton)
{
  return add_file_or_directory(path, parent_baton, copy_path, copy_revision,
                               TRUE , pool, child_baton);
}
