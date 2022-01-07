
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__value_t ;


 scalar_t__ sqlite3_value_text (void*) ;

const char *
svn_sqlite__value_text(svn_sqlite__value_t *val)
{
  void *v = val;
  return (const char *) sqlite3_value_text(v);
}
