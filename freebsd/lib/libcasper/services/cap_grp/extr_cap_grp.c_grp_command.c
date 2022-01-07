
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EINVAL ;
 int ENOTCAPABLE ;
 int grp_allowed_cmd (int const*,char const*) ;
 int grp_endgrent (int const*,int *,int *) ;
 int grp_getgrent (int const*,int *,int *) ;
 int grp_getgrgid (int const*,int *,int *) ;
 int grp_getgrnam (int const*,int *,int *) ;
 int grp_setgrent (int const*,int *,int *) ;
 int grp_setgroupent (int const*,int *,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
grp_command(const char *cmd, const nvlist_t *limits, nvlist_t *nvlin,
    nvlist_t *nvlout)
{
 int error;

 if (!grp_allowed_cmd(limits, cmd))
  return (ENOTCAPABLE);

 if (strcmp(cmd, "getgrent") == 0 || strcmp(cmd, "getgrent_r") == 0)
  error = grp_getgrent(limits, nvlin, nvlout);
 else if (strcmp(cmd, "getgrnam") == 0 || strcmp(cmd, "getgrnam_r") == 0)
  error = grp_getgrnam(limits, nvlin, nvlout);
 else if (strcmp(cmd, "getgrgid") == 0 || strcmp(cmd, "getgrgid_r") == 0)
  error = grp_getgrgid(limits, nvlin, nvlout);
 else if (strcmp(cmd, "setgroupent") == 0)
  error = grp_setgroupent(limits, nvlin, nvlout);
 else if (strcmp(cmd, "setgrent") == 0)
  error = grp_setgrent(limits, nvlin, nvlout);
 else if (strcmp(cmd, "endgrent") == 0)
  error = grp_endgrent(limits, nvlin, nvlout);
 else
  error = EINVAL;

 return (error);
}
