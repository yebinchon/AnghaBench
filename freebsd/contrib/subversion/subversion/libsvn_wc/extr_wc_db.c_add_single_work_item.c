
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__db_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int STMT_INSERT_WORK_ITEM ;
 int SVN_ERR (int ) ;
 int * svn_error_trace (int ) ;
 TYPE_1__* svn_skel__unparse (int const*,int *) ;
 int svn_sqlite__bind_blob (int *,int,int ,int ) ;
 int svn_sqlite__get_statement (int **,int *,int ) ;
 int svn_sqlite__insert (int *,int *) ;

__attribute__((used)) static svn_error_t *
add_single_work_item(svn_sqlite__db_t *sdb,
                     const svn_skel_t *work_item,
                     apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *serialized;
  svn_sqlite__stmt_t *stmt;

  serialized = svn_skel__unparse(work_item, scratch_pool);
  SVN_ERR(svn_sqlite__get_statement(&stmt, sdb, STMT_INSERT_WORK_ITEM));
  SVN_ERR(svn_sqlite__bind_blob(stmt, 1, serialized->data, serialized->len));
  return svn_error_trace(svn_sqlite__insert(((void*)0), stmt));
}
