
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_user_ent {int au_never; int au_always; int au_name; } ;


 scalar_t__ AU_USER_NAME_MAX ;
 int getauditflagsbin (char*,int *) ;
 int strlcpy (int ,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;
 char* strtok_r (char*,int ,char**) ;
 int user_delim ;

__attribute__((used)) static struct au_user_ent *
userfromstr(char *str, struct au_user_ent *u)
{
 char *username, *always, *never;
 char *last;

 username = strtok_r(str, user_delim, &last);
 always = strtok_r(((void*)0), user_delim, &last);
 never = strtok_r(((void*)0), user_delim, &last);

 if ((username == ((void*)0)) || (always == ((void*)0)) || (never == ((void*)0)))
  return (((void*)0));

 if (strlen(username) >= AU_USER_NAME_MAX)
  return (((void*)0));

 strlcpy(u->au_name, username, AU_USER_NAME_MAX);
 if (getauditflagsbin(always, &(u->au_always)) == -1)
  return (((void*)0));

 if (getauditflagsbin(never, &(u->au_never)) == -1)
  return (((void*)0));

 return (u);
}
