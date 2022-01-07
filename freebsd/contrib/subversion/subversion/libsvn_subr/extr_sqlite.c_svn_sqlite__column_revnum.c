
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s3stmt; } ;
typedef TYPE_1__ svn_sqlite__stmt_t ;
typedef int svn_revnum_t ;


 int SVN_INVALID_REVNUM ;
 int sqlite3_column_int64 (int ,int) ;
 scalar_t__ svn_sqlite__column_is_null (TYPE_1__*,int) ;

svn_revnum_t
svn_sqlite__column_revnum(svn_sqlite__stmt_t *stmt, int column)
{
  if (svn_sqlite__column_is_null(stmt, column))
    return SVN_INVALID_REVNUM;
  return (svn_revnum_t) sqlite3_column_int64(stmt->s3stmt, column);
}
