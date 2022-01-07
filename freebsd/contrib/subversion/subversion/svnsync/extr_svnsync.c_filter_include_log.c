
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int filter_exclude_log (char const*) ;

__attribute__((used)) static svn_boolean_t
filter_include_log(const char *key)
{
  return ! filter_exclude_log(key);
}
