
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DB_OLD_VERSION ;
 int DB_VERSION_MAJOR ;
 int DB_VERSION_MINOR ;
 int db_version (int*,int*,int *) ;

int
svn_fs_bdb__check_version(void)
{
  int major, minor;

  db_version(&major, &minor, ((void*)0));
  if (major != DB_VERSION_MAJOR || minor != DB_VERSION_MINOR)
    return DB_OLD_VERSION;
  return 0;
}
