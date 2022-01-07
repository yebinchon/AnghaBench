
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int tSuccess ;
struct TYPE_9__ {char** origArgVect; size_t curOptIdx; size_t origArgCt; } ;
typedef TYPE_2__ tOptions ;
struct TYPE_10__ {TYPE_1__* pOD; } ;
typedef TYPE_3__ tOptState ;
struct TYPE_8__ {int fOptState; } ;


 scalar_t__ FAILED (int ) ;
 int FAILURE ;
 char NUL ;
 scalar_t__ OPARG_TYPE_NONE ;
 int OPTST_ARG_OPTIONAL ;
 scalar_t__ OPTST_GET_ARGTYPE (int) ;
 int SUCCESS ;
 int opt_find_short (TYPE_2__*,int ,TYPE_3__*) ;

__attribute__((used)) static tSuccess
short_opt_ck(tOptions * opts, char * arg_txt, tOptState * pOS,
             char ** opt_txt, uint32_t * opt_idx)
{
    while (*arg_txt != NUL) {
        if (FAILED(opt_find_short(opts, (uint8_t)*arg_txt, pOS)))
            return FAILURE;




        if (OPTST_GET_ARGTYPE(pOS->pOD->fOptState) == OPARG_TYPE_NONE) {
            arg_txt++;

        } else if (pOS->pOD->fOptState & OPTST_ARG_OPTIONAL) {




            if (arg_txt[1] != NUL)
                return SUCCESS;

            arg_txt = opts->origArgVect[ opts->curOptIdx ];
            if (*arg_txt != '-')
                opt_txt[ (*opt_idx)++ ] =
                    opts->origArgVect[ (opts->curOptIdx)++ ];
            return SUCCESS;

        } else {




            if (arg_txt[1] == NUL) {
                if (opts->curOptIdx >= opts->origArgCt)
                    return FAILURE;
                opt_txt[ (*opt_idx)++ ] =
                    opts->origArgVect[ (opts->curOptIdx)++ ];
            }
            return SUCCESS;
        }
    }
    return SUCCESS;
}
