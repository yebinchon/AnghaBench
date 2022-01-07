
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DB_LOCK_DEADLOCK ;
 int SVN_ERR_FS_BERKELEY_DB ;
 int SVN_ERR_FS_BERKELEY_DB_DEADLOCK ;

__attribute__((used)) static int
bdb_err_to_apr_err(int db_err)
{
  if (db_err == DB_LOCK_DEADLOCK)
    return SVN_ERR_FS_BERKELEY_DB_DEADLOCK;
  else
    return SVN_ERR_FS_BERKELEY_DB;
}
