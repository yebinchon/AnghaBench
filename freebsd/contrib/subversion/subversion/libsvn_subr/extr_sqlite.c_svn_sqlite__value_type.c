
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__value_t ;


 int sqlite3_value_type (void*) ;

int
svn_sqlite__value_type(svn_sqlite__value_t *val)
{
  void *v = val;
  return sqlite3_value_type(v);
}
