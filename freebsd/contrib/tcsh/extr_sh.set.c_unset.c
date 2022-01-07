
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;
typedef int Char ;


 char HIST ;
 char HISTSUB ;
 scalar_t__ HistLit ;
 char PRCH ;
 char PRCHROOT ;
 int STR_WORD_CHARS ;
 int STRanyerror ;
 int STRbackslash_quote ;
 int STRcdtohome ;
 int STRcolor ;
 int STRcompat_expr ;
 int STRedit ;
 int STRfilec ;
 int STRhistchars ;
 int STRhistlit ;
 int STRhistory ;
 int STRignoreeof ;
 int STRimplicitcd ;
 int STRkillring ;
 int STRloginsh ;
 int STRnoclobber ;
 int STRpromptchars ;
 int STRrecognize_only_executables ;
 int STRsymlinks ;
 int STRvimode ;
 int STRwordchars ;
 int SetKillRing (int ) ;
 int USE (struct command*) ;
 scalar_t__ VImode ;
 int * adrof (int ) ;
 scalar_t__ anyerror ;
 scalar_t__ bslash_quote ;
 scalar_t__ cdtohome ;
 scalar_t__ compat_expr ;
 scalar_t__ editing ;
 scalar_t__ filec ;
 scalar_t__ implicit_cd ;
 scalar_t__ loginsh ;
 int nlsclose () ;
 int nlsinit () ;
 scalar_t__ no_clobber ;
 scalar_t__ noediting ;
 scalar_t__ numeof ;
 int set_color_context () ;
 int sethistory (int ) ;
 int shvhed ;
 scalar_t__ symlinks ;
 scalar_t__ tcsh ;
 int tw_cmd_free () ;
 int unset1 (int **,int *) ;
 int update_dspmbyte_vars () ;
 int update_wordchars () ;
 int word_chars ;

void
unset(Char **v, struct command *c)
{
    int did_roe, did_edit;

    USE(c);
    did_roe = adrof(STRrecognize_only_executables) != ((void*)0);
    did_edit = adrof(STRedit) != ((void*)0);
    unset1(v, &shvhed);






    if (adrof(STRhistchars) == 0) {
 HIST = '!';
 HISTSUB = '^';
    }
    if (adrof(STRignoreeof) == 0)
 numeof = 0;
    if (adrof(STRpromptchars) == 0) {
 PRCH = tcsh ? '>' : '%';
 PRCHROOT = '#';
    }
    if (adrof(STRnoclobber) == 0)
 no_clobber = 0;
    if (adrof(STRhistlit) == 0)
 HistLit = 0;
    if (adrof(STRloginsh) == 0)
 loginsh = 0;
    if (adrof(STRanyerror) == 0)
 anyerror = 0;
    if (adrof(STRwordchars) == 0)
 word_chars = STR_WORD_CHARS;
    if (adrof(STRedit) == 0)
 editing = 0;
    if (adrof(STRbackslash_quote) == 0)
 bslash_quote = 0;
    if (adrof(STRcompat_expr) == 0)
 compat_expr = 0;
    if (adrof(STRsymlinks) == 0)
 symlinks = 0;
    if (adrof(STRimplicitcd) == 0)
 implicit_cd = 0;
    if (adrof(STRcdtohome) == 0)
 cdtohome = 0;
    if (adrof(STRkillring) == 0)
 SetKillRing(0);
    if (did_edit && noediting && adrof(STRedit) == 0)
 noediting = 0;
    if (adrof(STRvimode) == 0)
 VImode = 0;
    if (did_roe && adrof(STRrecognize_only_executables) == 0)
 tw_cmd_free();
    if (adrof(STRhistory) == 0)
 sethistory(0);







    update_wordchars();




}
