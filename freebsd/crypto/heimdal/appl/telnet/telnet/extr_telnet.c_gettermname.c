
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ env_getvalue (unsigned char*) ;
 int free (char**) ;
 char** mklist (int ,char*) ;
 char* name_unknown ;
 scalar_t__ resettermname ;
 scalar_t__ strlen (char*) ;
 int strupr (char*) ;
 scalar_t__ telnet_setupterm (char*,int,int*) ;
 int termbuf ;
 char** unknown ;

__attribute__((used)) static char *
gettermname()
{
 char *tname;
 static char **tnamep = 0;
 static char **next;
 int err;

 if (resettermname) {
  resettermname = 0;
  if (tnamep && tnamep != unknown)
   free(tnamep);
  if ((tname = (char *)env_getvalue((unsigned char *)"TERM")) &&
    telnet_setupterm(tname, 1, &err) == 0) {
   tnamep = mklist(termbuf, tname);
  } else {
   if (tname && ((int)strlen(tname) <= 40)) {
    unknown[0] = tname;
    strupr(tname);
   } else
    unknown[0] = name_unknown;
   tnamep = unknown;
  }
  next = tnamep;
 }
 if (*next == 0)
  next = tnamep;
 return(*next++);
}
