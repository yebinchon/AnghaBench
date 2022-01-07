
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_CTYPE ;
 char* getenv (char const*) ;
 int * setlocale (int ,char*) ;
 int * strcasestr (char*,char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;

void
msetlocale(void)
{
 const char *vars[] = { "LC_ALL", "LC_CTYPE", "LANG", ((void*)0) };
 char *cp;
 int i;





 for (i = 0; vars[i] != ((void*)0); i++) {
  if ((cp = getenv(vars[i])) == ((void*)0))
   continue;
  if (strncasecmp(cp, "TR", 2) != 0)
   break;




  if ((strcasestr(cp, "UTF-8") != ((void*)0) ||
      strcasestr(cp, "UTF8") != ((void*)0)) &&
      (setlocale(LC_CTYPE, "C.UTF-8") != ((void*)0) ||
      setlocale(LC_CTYPE, "POSIX.UTF-8") != ((void*)0)))
   return;
  setlocale(LC_CTYPE, "C");
  return;
 }

 setlocale(LC_CTYPE, "");
}
