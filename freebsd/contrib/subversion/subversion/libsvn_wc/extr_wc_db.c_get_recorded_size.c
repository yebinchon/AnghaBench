
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__stmt_t ;
typedef int svn_filesize_t ;


 int SVN_INVALID_FILESIZE ;
 int svn_sqlite__column_int64 (int *,int) ;
 scalar_t__ svn_sqlite__column_is_null (int *,int) ;

__attribute__((used)) static svn_filesize_t
get_recorded_size(svn_sqlite__stmt_t *stmt, int slot)
{
  if (svn_sqlite__column_is_null(stmt, slot))
    return SVN_INVALID_FILESIZE;
  return svn_sqlite__column_int64(stmt, slot);
}
