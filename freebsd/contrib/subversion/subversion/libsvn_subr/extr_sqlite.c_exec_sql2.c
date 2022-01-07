
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db3; } ;
typedef TYPE_1__ svn_sqlite__db_t ;
typedef int svn_error_t ;


 int SQLITE_ERROR_CODE (int) ;
 int SQLITE_OK ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int sqlite3_exec (int ,char const*,int *,int *,char**) ;
 int sqlite3_free (char*) ;
 int * svn_error_createf (int ,int *,int ,int,char*,char const*) ;

__attribute__((used)) static svn_error_t *
exec_sql2(svn_sqlite__db_t *db, const char *sql, int ignored_err)
{
  char *err_msg;
  int sqlite_err = sqlite3_exec(db->db3, sql, ((void*)0), ((void*)0), &err_msg);

  if (sqlite_err != SQLITE_OK && sqlite_err != ignored_err)
    {
      svn_error_t *err = svn_error_createf(SQLITE_ERROR_CODE(sqlite_err), ((void*)0),
                                           _("sqlite[S%d]: %s,"
                                             " executing statement '%s'"),
                                           sqlite_err, err_msg, sql);
      sqlite3_free(err_msg);
      return err;
    }

  return SVN_NO_ERROR;
}
