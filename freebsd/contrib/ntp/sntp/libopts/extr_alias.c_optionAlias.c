
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ optCt; TYPE_3__* pOptDesc; } ;
typedef TYPE_2__ tOptions ;
struct TYPE_11__ {int argString; } ;
struct TYPE_13__ {int fOptState; scalar_t__ optOccCt; scalar_t__ optMaxCt; int (* pOptProc ) (TYPE_2__*,TYPE_3__*) ;TYPE_1__ optArg; } ;
typedef TYPE_3__ tOptDesc ;


 int EXIT_FAILURE ;
 TYPE_2__* OPTPROC_EMIT_LIMIT ;
 int OPTST_DEFINED ;
 int OPTST_PERSISTENT_MASK ;
 int fputs (int ,int ) ;
 int option_exits (int ) ;
 int stderr ;
 int stub1 (TYPE_2__*,TYPE_3__*) ;
 int too_many_occurrences (TYPE_2__*,TYPE_3__*) ;
 int zbad_alias_id ;

int
optionAlias(tOptions * opts, tOptDesc * old_od, unsigned int alias)
{
    tOptDesc * new_od;

    if (opts <= OPTPROC_EMIT_LIMIT)
        return 0;

    new_od = opts->pOptDesc + alias;
    if ((unsigned)opts->optCt <= alias) {
        fputs(zbad_alias_id, stderr);
        option_exits(EXIT_FAILURE);
    }




    new_od->fOptState &= OPTST_PERSISTENT_MASK;
    new_od->fOptState |= (old_od->fOptState & ~OPTST_PERSISTENT_MASK);
    new_od->optArg.argString = old_od->optArg.argString;





    if ( (new_od->fOptState & OPTST_DEFINED)
       && (++new_od->optOccCt > new_od->optMaxCt) )
        return too_many_occurrences(opts, new_od);




    old_od->fOptState &= OPTST_PERSISTENT_MASK;
    old_od->optOccCt = 0;




    if (new_od->pOptProc != ((void*)0))
        (*new_od->pOptProc)(opts, new_od);
    return 0;
}
