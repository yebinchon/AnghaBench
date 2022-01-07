
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ os_strcmp (char const*,char*) ;

__attribute__((used)) static int dpp_compatible_netrole(const char *role1, const char *role2)
{
 return (os_strcmp(role1, "sta") == 0 && os_strcmp(role2, "ap") == 0) ||
  (os_strcmp(role1, "ap") == 0 && os_strcmp(role2, "sta") == 0);
}
