
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * add_open_helper (char const*,char,int ,void*,char const*,int ,int *,void**) ;
 int svn_node_file ;

__attribute__((used)) static svn_error_t *
add_file(const char *path,
         void *parent_baton,
         const char *copyfrom_path,
         svn_revnum_t copyfrom_revision,
         apr_pool_t *pool,
         void **file_baton)
{
  return add_open_helper(path, 'A', svn_node_file, parent_baton,
                         copyfrom_path, copyfrom_revision,
                         pool, file_baton);
}
