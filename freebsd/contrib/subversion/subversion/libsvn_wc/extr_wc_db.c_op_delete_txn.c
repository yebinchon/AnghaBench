
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int STMT_CREATE_DELETE_LIST ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int delete_node (void*,TYPE_1__*,char const*,int *) ;
 int svn_sqlite__exec_statements (int ,int ) ;

__attribute__((used)) static svn_error_t *
op_delete_txn(void *baton,
              svn_wc__db_wcroot_t *wcroot,
              const char *local_relpath,
              apr_pool_t *scratch_pool)
{

  SVN_ERR(svn_sqlite__exec_statements(wcroot->sdb, STMT_CREATE_DELETE_LIST));
  SVN_ERR(delete_node(baton, wcroot, local_relpath, scratch_pool));
  return SVN_NO_ERROR;
}
