
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** environ ;
 char** malloc (size_t) ;
 int * strdup (char*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int ) ;

void
scrub_env(void)
{
 static const char *rej[] = {
  "TERMCAP=/",
  ((void*)0)
 };

 static const char *acc[] = {
  "XAUTH=", "XAUTHORITY=", "DISPLAY=",
  "TERM=",
  "EDITOR=",
  "PAGER=",
  "LOGNAME=",
  "POSIXLY_CORRECT=",
  "PRINTER=",
  ((void*)0)
 };

 char **cpp, **cpp2;
 const char **p;
 char ** new_environ;
 size_t count;


 for (count = 1, cpp = environ; *cpp; count++, cpp++)
  continue;
 if ((new_environ = malloc(count * sizeof(char *))) == ((void*)0)) {
  environ = ((void*)0);
  return;
 }

  for (cpp2 = new_environ, cpp = environ; *cpp; cpp++) {
  int reject_it = 0;

  for(p = rej; *p; p++)
   if(strncmp(*cpp, *p, strlen(*p)) == 0) {
    reject_it = 1;
    break;
   }
  if (reject_it)
   continue;

  for(p = acc; *p; p++)
   if(strncmp(*cpp, *p, strlen(*p)) == 0)
    break;
  if(*p != ((void*)0)) {
   if ((*cpp2++ = strdup(*cpp)) == ((void*)0)) {
    environ = new_environ;
    return;
   }
  }
  }
 *cpp2 = ((void*)0);
 environ = new_environ;
}
