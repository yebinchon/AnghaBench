
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s3stmt; } ;
typedef TYPE_1__ svn_sqlite__stmt_t ;
typedef int svn_boolean_t ;


 scalar_t__ SQLITE_NULL ;
 scalar_t__ sqlite3_column_type (int ,int) ;

svn_boolean_t
svn_sqlite__column_is_null(svn_sqlite__stmt_t *stmt, int column)
{
  return sqlite3_column_type(stmt->s3stmt, column) == SQLITE_NULL;
}
