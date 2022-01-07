
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 int G_CSH ;
 int G_GLOB ;
 scalar_t__ ISDOTDOT (char const*) ;
 scalar_t__ SYM_EXPAND ;
 scalar_t__ isglob (char const) ;
 scalar_t__ symlinks ;

int
tglob(Char **t)
{
    int gflag;
    const Char *p;

    gflag = 0;
    while ((p = *t++) != ((void*)0)) {
 if (*p == '~' || *p == '=')
     gflag |= G_CSH;
 else if (*p == '{' &&
   (p[1] == '\0' || (p[1] == '}' && p[2] == '\0')))
     continue;
 while (*p != '\0') {
     if (*p == '`') {
  gflag |= G_CSH;
     }
     else if (*p == '{')
  gflag |= G_CSH;
     else if (isglob(*p))
  gflag |= G_GLOB;
     else if (symlinks == SYM_EXPAND &&
  p[1] && ISDOTDOT(p) && (p == *(t-1) || *(p-1) == '/') )
      gflag |= G_CSH;
     p++;
 }
    }
    return gflag;
}
