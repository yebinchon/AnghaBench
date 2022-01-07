
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct edit_baton {int txn; scalar_t__ txn_root; scalar_t__ txn_aborted; int txn_owner; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int * svn_error_trace (int ) ;
 int svn_fs_abort_txn (int ,int *) ;
 int svn_fs_close_root (scalar_t__) ;

__attribute__((used)) static svn_error_t *
abort_edit(void *edit_baton,
           apr_pool_t *pool)
{
  struct edit_baton *eb = edit_baton;
  if ((! eb->txn) || (! eb->txn_owner) || eb->txn_aborted)
    return SVN_NO_ERROR;

  eb->txn_aborted = TRUE;


  if (eb->txn_root)
    svn_fs_close_root(eb->txn_root);

  return svn_error_trace(svn_fs_abort_txn(eb->txn, pool));
}
