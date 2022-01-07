
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pzPROGNAME; } ;
typedef TYPE_1__ tOptions ;
struct TYPE_6__ {scalar_t__ pOptProc; int optMaxCt; int pz_DisablePfx; int pz_NAME; } ;
typedef TYPE_2__ tOptDesc ;


 char* LVL3_CMD ;
 int NO_ARG_NEEDED ;
 char* NO_MULTI_ARG_FMT ;
 char* NO_SGL_ARG_FMT ;
 int NO_SUPPRESS_LOAD ;
 int fputs (int ,int ) ;
 scalar_t__ optionLoadOpt ;
 int printf (char*,int ,...) ;
 int stdout ;
 int zOptionEndSelect ;

__attribute__((used)) static void
emit_inaction(tOptions * opts, tOptDesc * od)
{
    if (od->pOptProc == optionLoadOpt) {
        printf(LVL3_CMD, NO_SUPPRESS_LOAD);

    } else if (od->optMaxCt == 1)
        printf(NO_SGL_ARG_FMT, opts->pzPROGNAME,
               od->pz_NAME, od->pz_DisablePfx);
    else
        printf(NO_MULTI_ARG_FMT, opts->pzPROGNAME,
               od->pz_NAME, od->pz_DisablePfx);

    printf(LVL3_CMD, NO_ARG_NEEDED);
    fputs(zOptionEndSelect, stdout);
}
