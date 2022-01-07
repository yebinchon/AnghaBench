
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pzPROGNAME; } ;
typedef TYPE_1__ tOptions ;
struct TYPE_6__ {int optMaxCt; int fOptState; int * pz_NAME; int * pOptProc; } ;
typedef TYPE_2__ tOptDesc ;


 char* CHK_MAX_COUNT ;
 char* ECHO_N_EXIT ;
 int LONG_USE_STR ;
 char* LVL3_CMD ;
 char* MULTI_ARG_FMT ;
 unsigned int NOLIMIT ;
 int NO_ARG_NEEDED ;
 int NO_LOAD_WARN ;
 int NO_SAVE_OPTS ;
 int OK_NEED_OPT_ARG ;
 scalar_t__ OPARG_TYPE_NONE ;
 int OPTST_ARG_OPTIONAL ;
 scalar_t__ OPTST_GET_ARGTYPE (int) ;
 char* PAGE_USAGE_TEXT ;
 char* SET_MULTI_ARG ;
 char* SGL_ARG_FMT ;
 int VER_STR ;
 int YES_NEED_OPT_ARG ;
 int fputs (int ,int ) ;
 int * optionLoadOpt ;
 int * optionPagedUsage ;
 int * optionPrintVersion ;
 int printf (char*,int ,...) ;
 int stdout ;
 int zOptionEndSelect ;

__attribute__((used)) static void
emit_action(tOptions * opts, tOptDesc * od)
{
    if (od->pOptProc == optionPrintVersion)
        printf(ECHO_N_EXIT, opts->pzPROGNAME, VER_STR);

    else if (od->pOptProc == optionPagedUsage)
        printf(PAGE_USAGE_TEXT, opts->pzPROGNAME);

    else if (od->pOptProc == optionLoadOpt) {
        printf(LVL3_CMD, NO_LOAD_WARN);
        printf(LVL3_CMD, YES_NEED_OPT_ARG);

    } else if (od->pz_NAME == ((void*)0)) {

        if (od->pOptProc == ((void*)0)) {
            printf(LVL3_CMD, NO_SAVE_OPTS);
            printf(LVL3_CMD, OK_NEED_OPT_ARG);
        } else
            printf(ECHO_N_EXIT, opts->pzPROGNAME, LONG_USE_STR);

    } else {
        if (od->optMaxCt == 1)
            printf(SGL_ARG_FMT, opts->pzPROGNAME, od->pz_NAME);
        else {
            if ((unsigned)od->optMaxCt < NOLIMIT)
                printf(CHK_MAX_COUNT, opts->pzPROGNAME,
                       od->pz_NAME, od->optMaxCt);

            printf(MULTI_ARG_FMT, opts->pzPROGNAME, od->pz_NAME);
        }




        if (OPTST_GET_ARGTYPE(od->fOptState) == OPARG_TYPE_NONE) {
            printf(SET_MULTI_ARG, opts->pzPROGNAME, od->pz_NAME);
            printf(LVL3_CMD, NO_ARG_NEEDED);

        } else if (od->fOptState & OPTST_ARG_OPTIONAL) {
            printf(SET_MULTI_ARG, opts->pzPROGNAME, od->pz_NAME);
            printf(LVL3_CMD, OK_NEED_OPT_ARG);

        } else {
            printf(LVL3_CMD, YES_NEED_OPT_ARG);
        }
    }
    fputs(zOptionEndSelect, stdout);
}
