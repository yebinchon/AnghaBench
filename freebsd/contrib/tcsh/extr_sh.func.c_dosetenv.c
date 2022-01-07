
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;
typedef char Char ;


 int AsciiOnly ;
 int CHECK_MBYTEVAR ;
 int CTL_ESC (int) ;
 int ERR_NAME ;
 int ERR_VARALNUM ;
 int ERR_VARBEGIN ;
 int G_APPEND ;
 scalar_t__ GotTermCaps ;
 int Isprint (int ) ;
 int LC_ALL ;
 int LC_COLLATE ;
 int LC_CTYPE ;
 int LC_MESSAGES ;
 int MB_CUR_MAX ;
 scalar_t__ MapsAreInited ;
 scalar_t__ NLSMapsAreInited ;
 int NoNLSRebind ;
 char* STRCOLUMNS ;
 char* STRKGROUP ;
 char* STRKHOME ;
 char* STRKPATH ;
 char* STRKSHLVL ;
 char* STRKTERM ;
 char* STRKUSER ;
 char* STRLANG ;
 char* STRLINES ;
 char* STRLSCOLORS ;
 char* STRLS_COLORS ;
 char* STRNLSPATH ;
 char* STRNOREBIND ;
 char* STRNULL ;
 char* STRSYSTYPE ;
 char* STRTERMCAP ;
 int STRedit ;
 int STRgroup ;
 int STRhome ;
 int STRshlvl ;
 char* STRtcshlang ;
 int STRterm ;
 int STRuser ;
 int USE (struct command*) ;
 int VAR_READWRITE ;
 int adrof (int ) ;
 scalar_t__ alnum (char) ;
 int autoset_dspmbyte (char*) ;
 int autoset_kanji () ;
 int check_window_size (int) ;
 int cleanup_ignore (char*) ;
 int cleanup_push (char*,int ) ;
 int cleanup_until (char*) ;
 char* dcanon (char*,char*) ;
 int dohash (int *,int *) ;
 int dont_free ;
 int doprintenv (char**,int ) ;
 int dtilde () ;
 int ed_Init () ;
 int ed_InitMaps () ;
 int ed_InitNLSMaps () ;
 int editing ;
 scalar_t__ eq (char*,char*) ;
 int fix_strcoll_bug () ;
 char* globone (char*,int ) ;
 int importpath (char*) ;
 scalar_t__ islocale_var (char*) ;
 int letter (char) ;
 int nlsclose () ;
 int nlsinit () ;
 scalar_t__ noediting ;
 int parseLSCOLORS (char*) ;
 int parseLS_COLORS (char*) ;
 int quote (char*) ;
 int setNS (int ) ;
 int setlocale (int ,char*) ;
 int setv (int ,int ,int ) ;
 char* short2str (char*) ;
 int stderror (int) ;
 scalar_t__ strcmp (char*,char*) ;
 int tsetenv (char*,char*) ;
 int tw_cmd_free () ;
 int xfree ;

void
dosetenv(Char **v, struct command *c)
{
    Char *vp, *lp;

    USE(c);
    if (*++v == 0) {
 doprintenv(--v, 0);
 return;
    }

    vp = *v++;
    lp = vp;

    if (!letter(*lp))
 stderror(ERR_NAME | ERR_VARBEGIN);
    do {
 lp++;
    } while (alnum(*lp) || *lp == '.');
    if (*lp != '\0')
 stderror(ERR_NAME | ERR_VARALNUM);

    if ((lp = *v++) == 0)
 lp = STRNULL;

    lp = globone(lp, G_APPEND);
    cleanup_push(lp, xfree);
    tsetenv(vp, lp);
    if (eq(vp, STRKPATH)) {
        importpath(lp);
 dohash(((void*)0), ((void*)0));
 cleanup_until(lp);
 return;
    }
    if (islocale_var(vp)) {
 AsciiOnly = 0;

 NLSMapsAreInited = 0;
 ed_Init();
 if (MapsAreInited && !NLSMapsAreInited)
     ed_InitNLSMaps();
 cleanup_until(lp);
 return;
    }
    if (eq(vp, STRNOREBIND)) {
 NoNLSRebind = 1;
 MapsAreInited = 0;
 NLSMapsAreInited = 0;
 ed_InitMaps();
 cleanup_until(lp);
 return;
    }







    if (eq(vp, STRKTERM)) {
 char *t;

 setv(STRterm, quote(lp), VAR_READWRITE);
 cleanup_ignore(lp);
 cleanup_until(lp);
 t = short2str(lp);
 if (noediting && strcmp(t, "unknown") != 0 && strcmp(t,"dumb") != 0) {
     editing = 1;
     noediting = 0;
     setNS(STRedit);
 }
 GotTermCaps = 0;
 ed_Init();
 return;
    }

    if (eq(vp, STRKHOME)) {
 Char *canon;



 canon = dcanon(lp, lp);
 cleanup_ignore(lp);
 cleanup_until(lp);
 cleanup_push(canon, xfree);
 setv(STRhome, quote(canon), VAR_READWRITE);
 cleanup_ignore(canon);
 cleanup_until(canon);


 dtilde();
 return;
    }

    if (eq(vp, STRKSHLVL)) {
 setv(STRshlvl, quote(lp), VAR_READWRITE);
 cleanup_ignore(lp);
 cleanup_until(lp);
 return;
    }

    if (eq(vp, STRKUSER)) {
 setv(STRuser, quote(lp), VAR_READWRITE);
 cleanup_ignore(lp);
 cleanup_until(lp);
 return;
    }

    if (eq(vp, STRKGROUP)) {
 setv(STRgroup, quote(lp), VAR_READWRITE);
 cleanup_ignore(lp);
 cleanup_until(lp);
 return;
    }
    cleanup_until(lp);
}
