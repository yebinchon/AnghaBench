
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;
typedef char Char ;


 int AsciiOnly ;
 int CTL_ESC (int) ;
 int Gmatch (char*,char*) ;
 int Isprint (int ) ;
 int LC_ALL ;
 int LC_COLLATE ;
 int LC_CTYPE ;
 int LC_MESSAGES ;
 int MB_CUR_MAX ;
 scalar_t__ MapsAreInited ;
 scalar_t__ NLSMapsAreInited ;
 scalar_t__ NoNLSRebind ;
 int STRLSCOLORS ;
 int STRLS_COLORS ;
 int STRNLSPATH ;
 int STRNOREBIND ;
 int STRSYSTYPE ;
 char** STR_environ ;
 int STRtcshlang ;
 int USE (struct command*) ;
 int Unsetenv (char*) ;
 int cleanup_push (char*,int ) ;
 int cleanup_until (char*) ;
 int dohash (int *,int *) ;
 int dont_free ;
 int ed_Init () ;
 int ed_InitMaps () ;
 int ed_InitNLSMaps () ;
 scalar_t__ eq (char*,int ) ;
 int fix_strcoll_bug () ;
 int * getenv (char*) ;
 scalar_t__ islocale_var (char*) ;
 int nls_dll_unload () ;
 int nlsclose () ;
 int nlsinit () ;
 int parseLSCOLORS (char*) ;
 int parseLS_COLORS (char*) ;
 int setlocale (int ,char*) ;
 int tw_cmd_free () ;
 int xfree ;
 char* xmalloc (int) ;

void
dounsetenv(Char **v, struct command *c)
{
    Char **ep, *p, *n, *name;
    int i, maxi;

    USE(c);



    for (maxi = 0, ep = STR_environ; *ep; ep++) {
 for (i = 0, p = *ep; *p && *p != '='; p++, i++)
     continue;
 if (i > maxi)
     maxi = i;
    }

    name = xmalloc((maxi + 1) * sizeof(Char));
    cleanup_push(name, xfree);

    while (++v && *v)
 for (maxi = 1; maxi;)
     for (maxi = 0, ep = STR_environ; *ep; ep++) {
  for (n = name, p = *ep; *p && *p != '='; *n++ = *p++)
      continue;
  *n = '\0';
  if (!Gmatch(name, *v))
      continue;
  maxi = 1;







  Unsetenv(name);

  if (eq(name, STRNOREBIND)) {
      NoNLSRebind = 0;
      MapsAreInited = 0;
      NLSMapsAreInited = 0;
      ed_InitMaps();
  }




  else if (islocale_var(name)) {
      AsciiOnly = getenv("LANG") == ((void*)0) &&
   getenv("LC_CTYPE") == ((void*)0);

      NLSMapsAreInited = 0;
      ed_Init();
      if (MapsAreInited && !NLSMapsAreInited)
   ed_InitNLSMaps();

  }
  break;
     }
    cleanup_until(name);
}
