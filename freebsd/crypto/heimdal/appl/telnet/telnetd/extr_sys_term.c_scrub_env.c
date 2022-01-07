
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** environ ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int ) ;

__attribute__((used)) static void
scrub_env(void)
{
    static const char *reject[] = {
 "TERMCAP=/",
 ((void*)0)
    };

    static const char *accept[] = {
 "XAUTH=", "XAUTHORITY=", "DISPLAY=",
 "TERM=",
 "EDITOR=",
 "PAGER=",
 "PRINTER=",
 "LOGNAME=",
 "POSIXLY_CORRECT=",
 "TERMCAP=",
 ((void*)0)
    };

    char **cpp, **cpp2;
    const char **p;

    for (cpp2 = cpp = environ; *cpp; cpp++) {
 int reject_it = 0;

 for(p = reject; *p; p++)
     if(strncmp(*cpp, *p, strlen(*p)) == 0) {
  reject_it = 1;
  break;
     }
 if (reject_it)
     continue;

 for(p = accept; *p; p++)
     if(strncmp(*cpp, *p, strlen(*p)) == 0)
  break;
 if(*p != ((void*)0))
     *cpp2++ = *cpp;
    }
    *cpp2 = ((void*)0);
}
