
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct passwd {char* pw_dir; } ;
struct TYPE_3__ {int gl_flags; } ;
typedef TYPE_1__ glob_t ;
typedef scalar_t__ Char ;


 char CHAR_EOS ;
 scalar_t__ const CHAR_SLASH ;
 scalar_t__ const CHAR_TILDE ;
 int GLOB_TILDE ;
 char* getenv (char*) ;
 int getuid () ;
 struct passwd* k_getpwnam (char*) ;
 struct passwd* k_getpwuid (int ) ;

__attribute__((used)) static const Char *
globtilde(const Char *pattern, Char *patbuf, glob_t *pglob)
{
 struct passwd *pwd;
 char *h;
 const Char *p;
 Char *b;

 if (*pattern != CHAR_TILDE || !(pglob->gl_flags & GLOB_TILDE))
  return pattern;


 for (p = pattern + 1, h = (char *) patbuf; *p && *p != CHAR_SLASH;
      *h++ = *p++)
  continue;

 *h = CHAR_EOS;

 if (((char *) patbuf)[0] == CHAR_EOS) {




  if ((h = getenv("HOME")) == ((void*)0)) {
   if ((pwd = k_getpwuid(getuid())) == ((void*)0))
    return pattern;
   else
    h = pwd->pw_dir;
  }
 }
 else {



  if ((pwd = k_getpwnam((char*) patbuf)) == ((void*)0))
   return pattern;
  else
   h = pwd->pw_dir;
 }


 for (b = patbuf; *h; *b++ = *h++)
  continue;


 while ((*b++ = *p++) != CHAR_EOS)
  continue;

 return patbuf;
}
