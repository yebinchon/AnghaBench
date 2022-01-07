
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int term_names; } ;
struct TYPE_10__ {TYPE_1__ type; } ;
struct TYPE_9__ {int magic; int * csp; } ;
typedef TYPE_1__ TERMTYPE ;
typedef TYPE_2__ TERMINAL_CONTROL_BLOCK ;
typedef TYPE_3__ TERMINAL ;
typedef int SCREEN ;
typedef int NCURSES_SP_NAME ;
typedef int NCURSES_SP_ARGx ;


 int FALSE ;
 int NAMESIZE ;
 int TCBMAGIC ;
 int TGETENT_ERR ;
 int TGETENT_NO ;
 int TGETENT_YES ;
 int TRUE ;
 scalar_t__ VALID_STRING (int ) ;
 TYPE_1__* _nc_fallback (char const*) ;
 int _nc_setup_tinfo (char const*,TYPE_1__*) ;
 int _nc_tinfo_cmdch (TYPE_3__*,int ) ;
 int assert (int) ;
 int clear_screen ;
 int * command_character ;
 int cursor_address ;
 int cursor_down ;
 int cursor_home ;
 scalar_t__ generic_type ;
 scalar_t__ hard_copy ;
 int ret_error0 (int,char*) ;
 int ret_error1 (int,char*,char const*) ;
 int strncpy (char*,int ,size_t) ;
 char* ttytype ;

__attribute__((used)) static bool
drv_CanHandle(TERMINAL_CONTROL_BLOCK * TCB, const char *tname, int *errret)
{
    bool result = FALSE;
    int status;
    TERMINAL *termp;
    SCREEN *sp;

    assert(TCB != 0 && tname != 0);
    termp = (TERMINAL *) TCB;
    sp = TCB->csp;
    TCB->magic = TCBMAGIC;




    status = TGETENT_NO;



    if (status != TGETENT_YES) {
 const TERMTYPE *fallback = _nc_fallback(tname);

 if (fallback) {
     termp->type = *fallback;
     status = TGETENT_YES;
 }
    }

    if (status != TGETENT_YES) {
 NCURSES_SP_NAME(del_curterm) (NCURSES_SP_ARGx termp);
 if (status == TGETENT_ERR) {
     ret_error0(status, "terminals database is inaccessible\n");
 } else if (status == TGETENT_NO) {
     ret_error1(status, "unknown terminal type.\n", tname);
 }
    }
    result = TRUE;

    strncpy(ttytype, termp->type.term_names, (size_t) NAMESIZE - 1);
    ttytype[NAMESIZE - 1] = '\0';


    if (command_character)
 _nc_tinfo_cmdch(termp, *command_character);

    if (generic_type) {




 if ((VALID_STRING(cursor_address)
      || (VALID_STRING(cursor_down) && VALID_STRING(cursor_home)))
     && VALID_STRING(clear_screen)) {
     ret_error1(TGETENT_YES, "terminal is not really generic.\n", tname);
 } else {
     ret_error1(TGETENT_NO, "I need something more specific.\n", tname);
 }
    }
    if (hard_copy) {
 ret_error1(TGETENT_YES, "I can't handle hardcopy terminals.\n", tname);
    }

    return result;
}
