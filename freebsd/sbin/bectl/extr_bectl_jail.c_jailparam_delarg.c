
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int jailparam_del (char*) ;
 char* mnt_loc ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
jailparam_delarg(char *arg)
{
 char *name, *val;

 if (arg == ((void*)0))
  return (EINVAL);
 name = arg;
 if ((val = strchr(name, '=')) != ((void*)0))
  *val++ = '\0';

 if (strcmp(name, "path") == 0)
  *mnt_loc = '\0';
 return (jailparam_del(name));
}
