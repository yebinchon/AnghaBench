
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nbr_statements; int * statement_strings; } ;
typedef TYPE_1__ svn_sqlite__db_t ;
typedef int svn_error_t ;


 int SVN_ERR_ASSERT (int) ;
 int exec_sql (TYPE_1__*,int ) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_sqlite__exec_statements(svn_sqlite__db_t *db, int stmt_idx)
{
  SVN_ERR_ASSERT(stmt_idx < db->nbr_statements);

  return svn_error_trace(exec_sql(db, db->statement_strings[stmt_idx]));
}
