
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* db; } ;
typedef TYPE_2__ svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_int64_t ;
struct TYPE_6__ {int db3; } ;


 int SVN_ERR (int ) ;
 int sqlite3_last_insert_rowid (int ) ;
 int * svn_error_trace (int ) ;
 int svn_sqlite__reset (TYPE_2__*) ;
 int svn_sqlite__step (int *,TYPE_2__*) ;

svn_error_t *
svn_sqlite__insert(apr_int64_t *row_id, svn_sqlite__stmt_t *stmt)
{
  svn_boolean_t got_row;

  SVN_ERR(svn_sqlite__step(&got_row, stmt));
  if (row_id)
    *row_id = sqlite3_last_insert_rowid(stmt->db->db3);

  return svn_error_trace(svn_sqlite__reset(stmt));
}
