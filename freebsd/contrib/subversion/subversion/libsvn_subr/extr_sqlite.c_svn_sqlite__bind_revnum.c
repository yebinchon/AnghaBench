
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; int s3stmt; } ;
typedef TYPE_1__ svn_sqlite__stmt_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
typedef int sqlite_int64 ;


 int SQLITE_ERR (int ,int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int sqlite3_bind_int64 (int ,int,int ) ;
 int sqlite3_bind_null (int ,int) ;

svn_error_t *
svn_sqlite__bind_revnum(svn_sqlite__stmt_t *stmt,
                        int slot,
                        svn_revnum_t value)
{
  if (SVN_IS_VALID_REVNUM(value))
    SQLITE_ERR(sqlite3_bind_int64(stmt->s3stmt, slot,
                                  (sqlite_int64)value), stmt->db);
  else
    SQLITE_ERR(sqlite3_bind_null(stmt->s3stmt, slot), stmt->db);

  return SVN_NO_ERROR;
}
