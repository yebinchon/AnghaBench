
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tSuccess ;
struct TYPE_7__ {scalar_t__ curOptIdx; scalar_t__ origArgCt; int * pzCurOpt; int pzProgPath; int ** origArgVect; } ;
typedef TYPE_2__ tOptions ;
struct TYPE_8__ {int optType; TYPE_1__* pOD; int * pzOptArg; } ;
typedef TYPE_3__ tOptState ;
struct TYPE_6__ {int pz_Name; } ;


 int EXIT_FAILURE ;
 int FAILURE ;
 int NUL ;
 int SUCCESS ;



 int fprintf (int ,char*,int ,int ) ;
 int fputs (char*,int ) ;
 int option_exits (int ) ;
 int stderr ;
 char* zMisArg ;

__attribute__((used)) static tSuccess
get_opt_arg_must(tOptions * opts, tOptState * o_st)
{
    switch (o_st->optType) {
    case 128:



        if (*++(opts->pzCurOpt) == NUL)
            opts->pzCurOpt = opts->origArgVect[ opts->curOptIdx++ ];
        o_st->pzOptArg = opts->pzCurOpt;
        break;

    case 129:




        if (o_st->pzOptArg == ((void*)0))
            o_st->pzOptArg = opts->origArgVect[ opts->curOptIdx++ ];
        break;

    default:





    case 130:




        break;
    }




    if (opts->curOptIdx > opts->origArgCt) {
        fprintf(stderr, zMisArg, opts->pzProgPath, o_st->pOD->pz_Name);
        return FAILURE;
    }

    opts->pzCurOpt = ((void*)0);
    return SUCCESS;
}
