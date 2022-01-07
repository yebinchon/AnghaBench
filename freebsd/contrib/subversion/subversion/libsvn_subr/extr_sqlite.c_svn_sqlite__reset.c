
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; int s3stmt; int needs_reset; } ;
typedef TYPE_1__ svn_sqlite__stmt_t ;
typedef int svn_error_t ;


 int FALSE ;
 int SQLITE_ERR (int ,int ) ;
 int * SVN_NO_ERROR ;
 int sqlite3_clear_bindings (int ) ;
 int sqlite3_reset (int ) ;

svn_error_t *
svn_sqlite__reset(svn_sqlite__stmt_t *stmt)
{

  stmt->needs_reset = FALSE;




  SQLITE_ERR(sqlite3_clear_bindings(stmt->s3stmt), stmt->db);






  SQLITE_ERR(sqlite3_reset(stmt->s3stmt), stmt->db);
  return SVN_NO_ERROR;
}
