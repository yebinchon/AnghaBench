
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EINVAL ;
 int fileargs_command_lstat (int const*,int *,int *) ;
 int fileargs_command_open (int const*,int *,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
fileargs_command(const char *cmd, const nvlist_t *limits,
    nvlist_t *nvlin, nvlist_t *nvlout)
{

 if (strcmp(cmd, "open") == 0)
  return (fileargs_command_open(limits, nvlin, nvlout));

 if (strcmp(cmd, "lstat") == 0)
  return (fileargs_command_lstat(limits, nvlin, nvlout));

 return (EINVAL);
}
