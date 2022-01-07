
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* db; } ;
typedef TYPE_2__ svn_sqlite__stmt_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int db3; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int sqlite3_changes (int ) ;
 int step_with_expectation (TYPE_2__*,int ) ;
 int * svn_error_trace (int ) ;
 int svn_sqlite__reset (TYPE_2__*) ;

svn_error_t *
svn_sqlite__update(int *affected_rows, svn_sqlite__stmt_t *stmt)
{
  SVN_ERR(step_with_expectation(stmt, FALSE));

  if (affected_rows)
    *affected_rows = sqlite3_changes(stmt->db->db3);

  return svn_error_trace(svn_sqlite__reset(stmt));
}
