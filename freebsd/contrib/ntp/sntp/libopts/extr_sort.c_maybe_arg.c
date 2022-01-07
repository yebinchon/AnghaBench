
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int tSuccess ;
struct TYPE_5__ {size_t curOptIdx; size_t origArgCt; char** origArgVect; } ;
typedef TYPE_1__ tOptions ;
struct TYPE_6__ {int optType; int * pzOptArg; } ;
typedef TYPE_2__ tOptState ;


 int FAILURE ;
 char NUL ;
 int PROBLEM ;
 int SUCCESS ;



__attribute__((used)) static tSuccess
maybe_arg(tOptions * opts, char * arg_txt, tOptState * pOS,
          char ** opt_txt, uint32_t * opt_idx)
{



    switch (pOS->optType) {
    case 128:





        if (*arg_txt != NUL)
            return SUCCESS;
        break;

    case 129:




        if (pOS->pzOptArg != ((void*)0))
            return SUCCESS;
        break;

    default:
        return FAILURE;
    }
    if (opts->curOptIdx >= opts->origArgCt)
        return PROBLEM;

    arg_txt = opts->origArgVect[ opts->curOptIdx ];
    if (*arg_txt != '-')
        opt_txt[ (*opt_idx)++ ] = opts->origArgVect[ (opts->curOptIdx)++ ];
    return SUCCESS;
}
