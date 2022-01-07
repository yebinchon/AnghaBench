
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct edit_baton {int * txn; int * root; int completed; } ;
typedef int apr_pool_t ;


 int TRUE ;
 int * svn_error_trace (int *) ;
 int * svn_fs_abort_txn (int *,int *) ;
 int svn_fs_close_root (int *) ;

__attribute__((used)) static svn_error_t *
abort_cb(void *baton,
         apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = baton;
  svn_error_t *err;


  eb->completed = TRUE;

  if (eb->root != ((void*)0))
    {
      svn_fs_close_root(eb->root);
      eb->root = ((void*)0);
    }


  err = svn_fs_abort_txn(eb->txn, scratch_pool);


  eb->txn = ((void*)0);

  return svn_error_trace(err);
}
