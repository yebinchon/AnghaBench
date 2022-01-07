
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tOptions ;
struct TYPE_8__ {int * argString; } ;
struct TYPE_9__ {int fOptState; TYPE_3__* optCookie; TYPE_1__ optArg; } ;
typedef TYPE_2__ tOptDesc ;
struct TYPE_10__ {int useCt; struct TYPE_10__** apzArgs; } ;
typedef TYPE_3__ tArgList ;


 int AGDUPSTR (char*,int *,char*) ;
 int AGFREE (TYPE_3__*) ;
 scalar_t__ INQUERY_CALL (int *,TYPE_2__*) ;
 int OPTST_RESET ;
 int VOIDP (char*) ;
 int addArgListEntry (TYPE_3__**,int ) ;

void
optionStackArg(tOptions * opts, tOptDesc * od)
{
    char * pz;

    if (INQUERY_CALL(opts, od))
        return;

    if ((od->fOptState & OPTST_RESET) != 0) {
        tArgList * arg_list = od->optCookie;
        int ix;
        if (arg_list == ((void*)0))
            return;

        ix = arg_list->useCt;
        while (--ix >= 0)
            AGFREE(arg_list->apzArgs[ix]);
        AGFREE(arg_list);

    } else {
        if (od->optArg.argString == ((void*)0))
            return;

        AGDUPSTR(pz, od->optArg.argString, "stack arg");
        addArgListEntry(&(od->optCookie), VOIDP(pz));
    }
}
