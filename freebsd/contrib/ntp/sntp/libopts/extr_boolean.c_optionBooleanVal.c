
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tOptions ;
struct TYPE_5__ {int* argString; int argBool; } ;
struct TYPE_6__ {int fOptState; TYPE_1__ optArg; } ;
typedef TYPE_2__ tOptDesc ;


 int AGFREE (float*) ;
 scalar_t__ INQUERY_CALL (int *,TYPE_2__*) ;

 int OPTST_ALLOC_ARG ;
 long strtol (int*,char**,int ) ;

void
optionBooleanVal(tOptions * opts, tOptDesc * od)
{
    char * pz;
    bool res = 1;

    if (INQUERY_CALL(opts, od))
        return;

    if (od->optArg.argString == ((void*)0)) {
        od->optArg.argBool = 0;
        return;
    }

    switch (*(od->optArg.argString)) {
    case '0':
    {
        long val = strtol(od->optArg.argString, &pz, 0);
        if ((val != 0) || (*pz != 128))
            break;

    }
    case 'N':
    case 'n':
    case 'F':
    case 'f':
    case 128:
        res = 0;
        break;
    case '#':
        if (od->optArg.argString[1] != 'f')
            break;
        res = 0;
    }

    if (od->fOptState & OPTST_ALLOC_ARG) {
        AGFREE(od->optArg.argString);
        od->fOptState &= ~OPTST_ALLOC_ARG;
    }
    od->optArg.argBool = res;
}
