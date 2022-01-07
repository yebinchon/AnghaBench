
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tSuccess ;
struct TYPE_7__ {int * pzCurOpt; int pzProgPath; } ;
typedef TYPE_2__ tOptions ;
struct TYPE_8__ {scalar_t__ optType; TYPE_1__* pOD; int * pzOptArg; } ;
typedef TYPE_3__ tOptState ;
struct TYPE_6__ {int pz_Name; } ;


 int FAILURE ;
 int SUCCESS ;
 scalar_t__ TOPT_SHORT ;
 int fprintf (int ,char*,int ,int ) ;
 int stderr ;
 char* zNoArg ;

__attribute__((used)) static tSuccess
get_opt_arg_none(tOptions * pOpts, tOptState * o_st)
{




    if (o_st->optType == TOPT_SHORT)
        (pOpts->pzCurOpt)++;




    else if (o_st->pzOptArg != ((void*)0)) {
        fprintf(stderr, zNoArg, pOpts->pzProgPath, o_st->pOD->pz_Name);
        return FAILURE;
    }




    else
        pOpts->pzCurOpt = ((void*)0);
    return SUCCESS;
}
