
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lastjid ;


 int MAXPATHLEN ;
 int jail_getv (int ,char*,char*,char*,char**,int *) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int
bectl_search_jail_paths(const char *mnt)
{
 int jid;
 char lastjid[16];
 char jailpath[MAXPATHLEN];


 snprintf(lastjid, sizeof(lastjid), "%d", 0);

 while ((jid = jail_getv(0, "lastjid", lastjid, "path", &jailpath,
     ((void*)0))) != -1) {


  if (strcmp(jailpath, mnt) == 0)
   return (jid);


  snprintf(lastjid, sizeof(lastjid), "%d", jid);
 }

 return (-1);
}
