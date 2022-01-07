
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_INVALID_REVNUM ;
 int * add_open_helper (char const*,char,int ,void*,int *,int ,int *,void**) ;
 int svn_node_file ;

__attribute__((used)) static svn_error_t *
open_file(const char *path,
          void *parent_baton,
          svn_revnum_t base_revision,
          apr_pool_t *pool,
          void **file_baton)
{
  return add_open_helper(path, 'R', svn_node_file, parent_baton,
                         ((void*)0), SVN_INVALID_REVNUM,
                         pool, file_baton);
}
