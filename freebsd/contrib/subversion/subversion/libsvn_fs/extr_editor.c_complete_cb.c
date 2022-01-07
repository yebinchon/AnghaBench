
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct edit_baton {int * root; int completed; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_fs_close_root (int *) ;

__attribute__((used)) static svn_error_t *
complete_cb(void *baton,
            apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = baton;




  eb->completed = TRUE;

  if (eb->root != ((void*)0))
    {
      svn_fs_close_root(eb->root);
      eb->root = ((void*)0);
    }

  return SVN_NO_ERROR;
}
