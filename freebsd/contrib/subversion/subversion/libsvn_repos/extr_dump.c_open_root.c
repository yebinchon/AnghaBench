
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 void* make_dir_baton (int *,int *,int ,void*,int *,int *) ;

__attribute__((used)) static svn_error_t *
open_root(void *edit_baton,
          svn_revnum_t base_revision,
          apr_pool_t *pool,
          void **root_baton)
{
  *root_baton = make_dir_baton(((void*)0), ((void*)0), SVN_INVALID_REVNUM,
                               edit_baton, ((void*)0), pool);
  return SVN_NO_ERROR;
}
