
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tOptions ;
typedef int tOptionValue ;
struct TYPE_7__ {int argString; } ;
struct TYPE_8__ {int fOptState; TYPE_3__* optCookie; int pz_Name; TYPE_1__ optArg; } ;
typedef TYPE_2__ tOptDesc ;
struct TYPE_9__ {int useCt; char** apzArgs; } ;
typedef TYPE_3__ tArgList ;


 int AGFREE (TYPE_3__*) ;
 int * OPTPROC_EMIT_LIMIT ;
 int OPTST_RESET ;
 void* VOIDP (int *) ;
 int addArgListEntry (TYPE_3__**,void*) ;
 int * optionLoadNested (int ,int ,int ) ;
 int optionUnloadNested (int const*) ;
 int strlen (int ) ;

void
optionNestedVal(tOptions * opts, tOptDesc * od)
{
    if (opts < OPTPROC_EMIT_LIMIT)
        return;

    if (od->fOptState & OPTST_RESET) {
        tArgList * arg_list = od->optCookie;
        int ct;
        char const ** av;

        if (arg_list == ((void*)0))
            return;
        ct = arg_list->useCt;
        av = arg_list->apzArgs;

        while (--ct >= 0) {
            void * p = VOIDP(*(av++));
            optionUnloadNested((tOptionValue const *)p);
        }

        AGFREE(od->optCookie);

    } else {
        tOptionValue * opt_val = optionLoadNested(
            od->optArg.argString, od->pz_Name, strlen(od->pz_Name));

        if (opt_val != ((void*)0))
            addArgListEntry(&(od->optCookie), VOIDP(opt_val));
    }
}
