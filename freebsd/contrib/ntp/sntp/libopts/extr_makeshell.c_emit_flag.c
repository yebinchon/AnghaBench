
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int optCt; int pzPROGNAME; TYPE_2__* pOptDesc; } ;
typedef TYPE_1__ tOptions ;
struct TYPE_8__ {int optValue; } ;
typedef TYPE_2__ tOptDesc ;


 int FLAG_STR ;
 int IS_GRAPHIC_CHAR (int ) ;
 scalar_t__ SKIP_OPT (TYPE_2__*) ;
 char* UNK_OPT_FMT ;
 int emit_action (TYPE_1__*,TYPE_2__*) ;
 int fputs (int ,int ) ;
 int printf (char*,int ,...) ;
 int stdout ;
 int zOptionCase ;
 char* zOptionFlag ;

__attribute__((used)) static void
emit_flag(tOptions * opts)
{
    tOptDesc * od = opts->pOptDesc;
    int opt_ct = opts->optCt;

    fputs(zOptionCase, stdout);

    for (;opt_ct > 0; od++, --opt_ct) {

        if (SKIP_OPT(od) || ! IS_GRAPHIC_CHAR(od->optValue))
            continue;

        printf(zOptionFlag, od->optValue);
        emit_action(opts, od);
    }
    printf(UNK_OPT_FMT, FLAG_STR, opts->pzPROGNAME);
}
