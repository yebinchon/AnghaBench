
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int needs_reset; TYPE_1__* db; int s3stmt; } ;
typedef TYPE_2__ svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_5__ {int db3; } ;


 int SQLITE_DONE ;
 int SQLITE_ERROR_CODE (int) ;
 int SQLITE_ROW ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int sqlite3_errmsg (int ) ;
 int sqlite3_step (int ) ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_error_createf (int ,int *,char*,int,int ) ;
 int * svn_sqlite__reset (TYPE_2__*) ;

svn_error_t *
svn_sqlite__step(svn_boolean_t *got_row, svn_sqlite__stmt_t *stmt)
{
  int sqlite_result = sqlite3_step(stmt->s3stmt);

  if (sqlite_result != SQLITE_DONE && sqlite_result != SQLITE_ROW)
    {
      svn_error_t *err1, *err2;

      err1 = svn_error_createf(SQLITE_ERROR_CODE(sqlite_result), ((void*)0),
                               "sqlite[S%d]: %s",
                               sqlite_result, sqlite3_errmsg(stmt->db->db3));
      err2 = svn_sqlite__reset(stmt);
      return svn_error_compose_create(err1, err2);
    }

  *got_row = (sqlite_result == SQLITE_ROW);
  stmt->needs_reset = TRUE;

  return SVN_NO_ERROR;
}
