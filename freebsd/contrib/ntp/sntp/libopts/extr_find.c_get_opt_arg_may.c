
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tSuccess ;
struct TYPE_6__ {char* pzCurOpt; char** origArgVect; size_t curOptIdx; } ;
typedef TYPE_1__ tOptions ;
struct TYPE_7__ {int optType; char* pzOptArg; } ;
typedef TYPE_2__ tOptState ;


 int NAMED_OPTS (TYPE_1__*) ;
 char NUL ;
 int SUCCESS ;



 int ao_bug (int ) ;
 int zbad_default_msg ;

__attribute__((used)) static tSuccess
get_opt_arg_may(tOptions * pOpts, tOptState * o_st)
{



    switch (o_st->optType) {
    case 128:
        if (*++pOpts->pzCurOpt != NUL)
            o_st->pzOptArg = pOpts->pzCurOpt;
        else {
            char * pzLA = pOpts->origArgVect[ pOpts->curOptIdx ];






            if ((pzLA == ((void*)0)) || (*pzLA == '-'))
                o_st->pzOptArg = ((void*)0);
            else {
                pOpts->curOptIdx++;
                o_st->pzOptArg = pzLA;
            }
        }
        break;

    case 129:




        if ( (o_st->pzOptArg == ((void*)0))
           && (! NAMED_OPTS(pOpts))) {
            char * pzLA = pOpts->origArgVect[ pOpts->curOptIdx ];






            if ((pzLA == ((void*)0)) || (*pzLA == '-'))
                o_st->pzOptArg = ((void*)0);
            else {
                pOpts->curOptIdx++;
                o_st->pzOptArg = pzLA;
            }
        }
        break;

    default:
    case 130:
        ao_bug(zbad_default_msg);
    }







    pOpts->pzCurOpt = ((void*)0);
    return SUCCESS;
}
