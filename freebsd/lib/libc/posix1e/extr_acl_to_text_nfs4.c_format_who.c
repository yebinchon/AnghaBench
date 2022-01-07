
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct passwd {char* pw_name; } ;
struct group {char* gr_name; } ;
typedef int acl_tag_t ;
typedef int acl_entry_t ;







 scalar_t__ acl_get_qualifier (int const) ;
 int acl_get_tag_type (int const,int*) ;
 struct group* getgrgid (scalar_t__) ;
 struct passwd* getpwuid (scalar_t__) ;
 int snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static int
format_who(char *str, size_t size, const acl_entry_t entry, int numeric)
{
 int error;
 acl_tag_t tag;
 struct passwd *pwd;
 struct group *grp;
 uid_t *id;

 error = acl_get_tag_type(entry, &tag);
 if (error)
  return (error);

 switch (tag) {
 case 128:
  snprintf(str, size, "owner@");
  break;

 case 129:
  id = (uid_t *)acl_get_qualifier(entry);
  if (id == ((void*)0))
   return (-1);

  if (!numeric)
   pwd = getpwuid(*id);
  else
   pwd = ((void*)0);
  if (pwd == ((void*)0))
   snprintf(str, size, "user:%d", (unsigned int)*id);
  else
   snprintf(str, size, "user:%s", pwd->pw_name);
  break;

 case 130:
  snprintf(str, size, "group@");
  break;

 case 131:
  id = (uid_t *)acl_get_qualifier(entry);
  if (id == ((void*)0))
   return (-1);

  if (!numeric)
   grp = getgrgid(*id);
  else
   grp = ((void*)0);
  if (grp == ((void*)0))
   snprintf(str, size, "group:%d", (unsigned int)*id);
  else
   snprintf(str, size, "group:%s", grp->gr_name);
  break;

 case 132:
  snprintf(str, size, "everyone@");
  break;

 default:
  return (-1);
 }

 return (0);
}
