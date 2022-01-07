
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int nvlist_exists_null (int const*,char const*) ;
 int nvlist_exists_nvlist (int const*,char*) ;
 int * nvlist_get_nvlist (int const*,char*) ;

__attribute__((used)) static bool
pwd_allowed_cmd(const nvlist_t *limits, const char *cmd)
{

 if (limits == ((void*)0))
  return (1);





 if (!nvlist_exists_nvlist(limits, "cmds"))
  return (1);

 limits = nvlist_get_nvlist(limits, "cmds");
 return (nvlist_exists_null(limits, cmd));
}
