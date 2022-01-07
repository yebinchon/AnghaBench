
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct edit_baton {int root_opened; } ;
typedef int apr_pool_t ;


 int TRUE ;
 int * make_dir_baton (void**,int *,struct edit_baton*,int *,int *) ;

__attribute__((used)) static svn_error_t *
open_root(void *edit_baton,
          svn_revnum_t base_revision,
          apr_pool_t *pool,
          void **dir_baton)
{
  struct edit_baton *eb = edit_baton;
  eb->root_opened = TRUE;
  return make_dir_baton(dir_baton, ((void*)0), eb, ((void*)0), pool);
}
