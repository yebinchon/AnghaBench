
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int presetOptCt; TYPE_3__* pOptDesc; } ;
typedef TYPE_2__ tOptions ;
struct TYPE_16__ {int argBool; int argInt; } ;
struct TYPE_18__ {int fOptState; scalar_t__ optEquivIndex; scalar_t__ optIndex; int optActualIndex; TYPE_1__ optArg; } ;
typedef TYPE_3__ tOptDesc ;
typedef int FILE ;


 scalar_t__ NO_EQUIVALENT ;
 int OPTST_DO_NOT_SAVE_MASK ;
 int OPTST_EQUIVALENCE ;
 int OPTST_GET_ARGTYPE (int) ;
 scalar_t__ UNUSED_OPT (TYPE_3__*) ;
 char* VOIDP (int ) ;
 int fclose (int *) ;
 int * open_sv_file (TYPE_2__*) ;
 int prt_entry (int *,TYPE_3__*,char*) ;
 int prt_enum_arg (int *,TYPE_3__*) ;
 int prt_file_arg (int *,TYPE_3__*,TYPE_2__*) ;
 int prt_nested (int *,TYPE_3__*) ;
 int prt_no_arg_opt (int *,TYPE_3__*,TYPE_3__*) ;
 int prt_set_arg (int *,TYPE_3__*) ;
 int prt_str_arg (int *,TYPE_3__*) ;

void
optionSaveFile(tOptions * opts)
{
    tOptDesc * od;
    int ct;
    FILE * fp = open_sv_file(opts);

    if (fp == ((void*)0))
        return;




    ct = opts->presetOptCt;
    od = opts->pOptDesc;
    do {
        tOptDesc * p;
        if (UNUSED_OPT(od))
            continue;

        if ((od->fOptState & OPTST_DO_NOT_SAVE_MASK) != 0)
            continue;

        if ( (od->optEquivIndex != NO_EQUIVALENT)
           && (od->optEquivIndex != od->optIndex))
            continue;






        p = ((od->fOptState & OPTST_EQUIVALENCE) != 0)
            ? (opts->pOptDesc + od->optActualIndex) : od;

        switch (OPTST_GET_ARGTYPE(od->fOptState)) {
        case 130:
            prt_no_arg_opt(fp, p, od);
            break;

        case 129:
            prt_entry(fp, p, VOIDP(p->optArg.argInt));
            break;

        case 128:
            prt_str_arg(fp, p);
            break;

        case 134:
            prt_enum_arg(fp, p);
            break;

        case 131:
            prt_set_arg(fp, p);
            break;

        case 135:
            prt_entry(fp, p, p->optArg.argBool ? "true" : "false");
            break;

        case 132:
            prt_nested(fp, p);
            break;

        case 133:
            prt_file_arg(fp, p, opts);
            break;

        default:
            break;
        }
    } while (od++, (--ct > 0));

    fclose(fp);
}
