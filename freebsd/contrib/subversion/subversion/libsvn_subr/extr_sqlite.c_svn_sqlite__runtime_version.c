
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* sqlite3_libversion () ;

const char *
svn_sqlite__runtime_version(void)
{
  return sqlite3_libversion();
}
