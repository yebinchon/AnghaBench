
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_name; } ;
typedef int defuserbuf ;


 scalar_t__ DefUid ;
 char* DefUser ;
 int sm_dprintf (char*,long,char*) ;
 struct passwd* sm_getpwuid (scalar_t__) ;
 int sm_strlcpy (char*,char*,int) ;
 scalar_t__ tTd (int,int) ;

void
setdefuser()
{
 struct passwd *defpwent;
 static char defuserbuf[40];

 DefUser = defuserbuf;
 defpwent = sm_getpwuid(DefUid);
 (void) sm_strlcpy(defuserbuf,
     (defpwent == ((void*)0) || defpwent->pw_name == ((void*)0))
      ? "nobody" : defpwent->pw_name,
     sizeof(defuserbuf));
 if (tTd(37, 4))
  sm_dprintf("setdefuser: DefUid=%ld, DefUser=%s\n",
      (long) DefUid, DefUser);
}
