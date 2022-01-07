
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int optCt; int pzPROGNAME; TYPE_2__* pOptDesc; } ;
typedef TYPE_1__ tOptions ;
struct TYPE_12__ {int * pz_DisableName; int * pz_Name; } ;
typedef TYPE_2__ tOptDesc ;


 int OPTION_STR ;
 scalar_t__ SKIP_OPT (TYPE_2__*) ;
 char* UNK_OPT_FMT ;
 int emit_action (TYPE_1__*,TYPE_2__*) ;
 int emit_inaction (TYPE_1__*,TYPE_2__*) ;
 int emit_match_expr (int *,TYPE_2__*,TYPE_1__*) ;
 int fputs (int ,int ) ;
 int printf (char*,int ,int ) ;
 int stdout ;
 int zOptionCase ;

__attribute__((used)) static void
emit_long(tOptions * opts)
{
    tOptDesc * od = opts->pOptDesc;
    int ct = opts->optCt;

    fputs(zOptionCase, stdout);




    do {



        if (SKIP_OPT(od))
            continue;

        emit_match_expr(od->pz_Name, od, opts);
        emit_action(opts, od);




        if (od->pz_DisableName != ((void*)0)) {
            emit_match_expr(od->pz_DisableName, od, opts);
            emit_inaction(opts, od);
        }
    } while (od++, --ct > 0);

    printf(UNK_OPT_FMT, OPTION_STR, opts->pzPROGNAME);
}
