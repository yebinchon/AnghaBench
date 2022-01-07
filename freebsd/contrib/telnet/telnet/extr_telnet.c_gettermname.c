
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* env_getvalue (char*) ;
 int free (char const**) ;
 char** mklist (int ,char*) ;
 char* name_unknown ;
 scalar_t__ resettermname ;
 scalar_t__ setupterm (char*,int,int*) ;
 int strlen (char*) ;
 int termbuf ;
 char const** unknown ;
 int upcase (char*) ;

__attribute__((used)) static const char *
gettermname(void)
{
 char *tname;
 static const char **tnamep = 0;
 static const char **next;
 int err;

 if (resettermname) {
  resettermname = 0;
  if (tnamep && tnamep != unknown)
   free(tnamep);
  if ((tname = env_getvalue("TERM")) &&
    (setupterm(tname, 1, &err) == 0)) {
   tnamep = mklist(termbuf, tname);
  } else {
   if (tname && (strlen(tname) <= 40)) {
    unknown[0] = tname;
    upcase(tname);
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
