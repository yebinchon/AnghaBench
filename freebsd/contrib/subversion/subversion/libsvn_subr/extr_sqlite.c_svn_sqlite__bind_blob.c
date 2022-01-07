
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; int s3stmt; } ;
typedef TYPE_1__ svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;


 int SQLITE_ERR (int ,int ) ;
 int SQLITE_TRANSIENT ;
 int * SVN_NO_ERROR ;
 int sqlite3_bind_blob (int ,int,void const*,int,int ) ;

svn_error_t *
svn_sqlite__bind_blob(svn_sqlite__stmt_t *stmt,
                      int slot,
                      const void *val,
                      apr_size_t len)
{
  SQLITE_ERR(sqlite3_bind_blob(stmt->s3stmt, slot, val, (int) len,
                               SQLITE_TRANSIENT),
             stmt->db);
  return SVN_NO_ERROR;
}
