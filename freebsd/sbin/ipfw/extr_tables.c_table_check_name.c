
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ ipfw_check_object_name (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

int
table_check_name(const char *tablename)
{

 if (ipfw_check_object_name(tablename) != 0)
  return (EINVAL);

 if (strcmp(tablename, "all") == 0)
  return (EINVAL);
 return (0);
}
