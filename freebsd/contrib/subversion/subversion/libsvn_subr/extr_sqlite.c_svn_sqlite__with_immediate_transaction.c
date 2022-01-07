
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* svn_sqlite__transaction_callback_t ) (void*,int *,int *) ;
typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int SVN_SQLITE__WITH_IMMEDIATE_TXN (int ,int *) ;

svn_error_t *
svn_sqlite__with_immediate_transaction(
  svn_sqlite__db_t *db,
  svn_sqlite__transaction_callback_t cb_func,
  void *cb_baton,
  apr_pool_t *scratch_pool )
{
  SVN_SQLITE__WITH_IMMEDIATE_TXN(cb_func(cb_baton, db, scratch_pool), db);
  return SVN_NO_ERROR;
}
