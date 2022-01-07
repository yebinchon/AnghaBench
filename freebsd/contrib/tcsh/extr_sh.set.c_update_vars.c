
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {int vec; } ;
typedef char Char ;


 char* CHECK_MBYTEVAR ;
 int ERR_NAME ;
 int ERR_UNDVAR ;
 scalar_t__ GotTermCaps ;
 char HIST ;
 char HISTSUB ;
 int HistLit ;
 int Isdigit (char) ;
 char PRCH ;
 char PRCHROOT ;
 int STRKGROUP ;
 int STRKHOME ;
 int STRKSHLVL ;
 int STRKTERM ;
 int STRKUSER ;
 int STRLOGNAME ;
 int STRTERMCAP ;
 char* STRanyerror ;
 char* STRbackslash_quote ;
 char* STRcatalog ;
 char* STRcdtohome ;
 char* STRchase ;
 char* STRcolor ;
 char* STRcompat_expr ;
 char* STRdirstack ;
 int STRdumb ;
 char* STRedit ;
 char* STRexpand ;
 char* STRfilec ;
 char* STRgroup ;
 char* STRhistchars ;
 char* STRhistlit ;
 char* STRhistory ;
 char* STRhome ;
 char* STRignore ;
 char* STRignoreeof ;
 char* STRimplicitcd ;
 char* STRkillring ;
 char* STRloginsh ;
 int STRnetwork ;
 char* STRnoclobber ;
 char* STRnokanji ;
 char* STRpath ;
 char* STRpromptchars ;
 char* STRrecognize_only_executables ;
 char* STRshlvl ;
 char* STRsymlinks ;
 char* STRterm ;
 int STRunknown ;
 char* STRuser ;
 char* STRverbose ;
 char* STRvimode ;
 char* STRwatch ;
 char* STRwordchars ;
 scalar_t__ SYM_CHASE ;
 scalar_t__ SYM_EXPAND ;
 scalar_t__ SYM_IGNORE ;
 int SetKillRing (int) ;
 scalar_t__ Strcmp (char*,int ) ;
 char* Strsave (char*) ;
 int Unsetenv (int ) ;
 int VAR_READWRITE ;
 int VImode ;
 struct varent* adrof (char*) ;
 int anyerror ;
 int bslash_quote ;
 int cdtohome ;
 int cleanup_ignore (char*) ;
 int cleanup_push (char*,int ) ;
 int cleanup_until (char*) ;
 int compat_expr ;
 char* dcanon (char*,char*) ;
 int dohash (int *,int *) ;
 int dsetstack () ;
 int dtilde () ;
 int ed_Init () ;
 int editing ;
 scalar_t__ eq (char*,char*) ;
 int exportpath (int ) ;
 int filec ;
 char* getenv (char*) ;
 scalar_t__ getn (char*) ;
 int implicit_cd ;
 int loginsh ;
 int nlsclose () ;
 int nlsinit () ;
 int no_clobber ;
 scalar_t__ noediting ;
 int numeof ;
 int resetwatch () ;
 int setNS (char*) ;
 int set_color_context () ;
 int set_noclobber (int ) ;
 int setcopy (char*,char*,int ) ;
 int sethistory (int) ;
 int stderror (int) ;
 scalar_t__ symlinks ;
 int tsetenv (int ,char*) ;
 int tw_cmd_free () ;
 int update_dspmbyte_vars () ;
 int update_wordchars () ;
 char* varval (char*) ;
 char* word_chars ;
 int xfree ;

__attribute__((used)) static void
update_vars(Char *vp)
{
    if (eq(vp, STRpath)) {
 struct varent *p = adrof(STRpath);
 if (p == ((void*)0))
     stderror(ERR_NAME | ERR_UNDVAR);
 else {
     exportpath(p->vec);
     dohash(((void*)0), ((void*)0));
 }
    }
    else if (eq(vp, STRnoclobber)) {
 struct varent *p = adrof(STRnoclobber);
 if (p == ((void*)0))
     stderror(ERR_NAME | ERR_UNDVAR);
 else
     no_clobber = set_noclobber(p->vec);
    }
    else if (eq(vp, STRhistchars)) {
 Char *pn = varval(vp);

 HIST = *pn++;
 if (HIST)
     HISTSUB = *pn;
 else
     HISTSUB = HIST;
    }
    else if (eq(vp, STRpromptchars)) {
 Char *pn = varval(vp);

 PRCH = *pn++;
 if (PRCH)
     PRCHROOT = *pn;
 else
     PRCHROOT = PRCH;
    }
    else if (eq(vp, STRhistlit)) {
 HistLit = 1;
    }
    else if (eq(vp, STRuser)) {
 tsetenv(STRKUSER, varval(vp));
 tsetenv(STRLOGNAME, varval(vp));
    }
    else if (eq(vp, STRgroup)) {
 tsetenv(STRKGROUP, varval(vp));
    }
    else if (eq(vp, STRwordchars)) {
 word_chars = varval(vp);
    }
    else if (eq(vp, STRloginsh)) {
 loginsh = 1;
    }
    else if (eq(vp, STRanyerror)) {
 anyerror = 1;
    }
    else if (eq(vp, STRsymlinks)) {
 Char *pn = varval(vp);

 if (eq(pn, STRignore))
     symlinks = SYM_IGNORE;
 else if (eq(pn, STRexpand))
     symlinks = SYM_EXPAND;
 else if (eq(pn, STRchase))
     symlinks = SYM_CHASE;
 else
     symlinks = 0;
    }
    else if (eq(vp, STRterm)) {
 Char *cp = varval(vp);
 tsetenv(STRKTERM, cp);





 GotTermCaps = 0;
 if (noediting && Strcmp(cp, STRnetwork) != 0 &&
     Strcmp(cp, STRunknown) != 0 && Strcmp(cp, STRdumb) != 0) {
     editing = 1;
     noediting = 0;
     setNS(STRedit);
 }
 ed_Init();
    }
    else if (eq(vp, STRhome)) {
 Char *cp, *canon;

 cp = Strsave(varval(vp));
 cleanup_push(cp, xfree);




 canon = dcanon(cp, cp);
 cleanup_ignore(cp);
 cleanup_until(cp);
 cleanup_push(canon, xfree);

 setcopy(vp, canon, VAR_READWRITE);


 tsetenv(STRKHOME, canon);

 dtilde();
 cleanup_until(canon);
    }
    else if (eq(vp, STRedit)) {
 editing = 1;
 noediting = 0;

    }
    else if (eq(vp, STRvimode)) {
 VImode = 1;
 update_wordchars();
    }
    else if (eq(vp, STRshlvl)) {
 tsetenv(STRKSHLVL, varval(vp));
    }
    else if (eq(vp, STRignoreeof)) {
 Char *cp;
 numeof = 0;
     for ((cp = varval(STRignoreeof)); cp && *cp; cp++) {
     if (!Isdigit(*cp)) {
  numeof = 0;
  break;
     }
     numeof = numeof * 10 + *cp - '0';
 }
 if (numeof <= 0) numeof = 26;
    }
    else if (eq(vp, STRbackslash_quote)) {
 bslash_quote = 1;
    }
    else if (eq(vp, STRcompat_expr)) {
 compat_expr = 1;
    }
    else if (eq(vp, STRdirstack)) {
 dsetstack();
    }
    else if (eq(vp, STRrecognize_only_executables)) {
 tw_cmd_free();
    }
    else if (eq(vp, STRkillring)) {
 SetKillRing((int)getn(varval(vp)));
    }
    else if (eq(vp, STRhistory)) {
 sethistory((int)getn(varval(vp)));
    }

    else if (eq(vp, STRwatch)) {
 resetwatch();
    }

    else if (eq(vp, STRimplicitcd)) {
 implicit_cd = ((eq(varval(vp), STRverbose)) ? 2 : 1);
    }
    else if (eq(vp, STRcdtohome)) {
 cdtohome = 1;
    }
}
