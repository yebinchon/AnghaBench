
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int fOptSet; int (* pUsageProc ) (TYPE_2__*,int ) ;int pzProgName; } ;
typedef TYPE_2__ tOptions ;
struct TYPE_18__ {int flags; } ;
typedef TYPE_3__ tOptState ;
struct TYPE_16__ {char* argString; } ;
struct TYPE_19__ {int fOptState; TYPE_1__ optArg; } ;
typedef TYPE_4__ tOptDesc ;


 scalar_t__ DO_IMMEDIATELY (int ) ;
 scalar_t__ DO_NORMALLY (int ) ;
 scalar_t__ DO_SECOND_TIME (int ) ;
 int EXIT_FAILURE ;
 TYPE_2__* OPTPROC_EMIT_LIMIT ;
 int OPTPROC_IMMEDIATE ;
 int OPTPROC_VENDOR_OPT ;
 TYPE_3__ OPTSTATE_INITIALIZER (int ) ;
 int OPTST_DEFINED ;
 int OPTST_RESET ;
 int PRESET ;
 int SUCCESSFUL (int ) ;
 int _exit (int ) ;
 int fprintf (int ,char*,int ,char const*) ;
 int get_opt_arg (TYPE_2__*,TYPE_3__*) ;
 int handle_opt (TYPE_2__*,TYPE_3__*) ;
 int opt_find_long (TYPE_2__*,char const*,TYPE_3__*) ;
 int stderr ;
 int stub1 (TYPE_2__*,int ) ;
 char* zIllVendOptStr ;

void
optionVendorOption(tOptions * pOpts, tOptDesc * pOD)
{
    tOptState opt_st = OPTSTATE_INITIALIZER(PRESET);
    char const * vopt_str = pOD->optArg.argString;

    if (pOpts <= OPTPROC_EMIT_LIMIT)
        return;

    if ((pOD->fOptState & OPTST_RESET) != 0)
        return;

    if ((pOD->fOptState & OPTPROC_IMMEDIATE) == 0)
        opt_st.flags = OPTST_DEFINED;

    if ( ((pOpts->fOptSet & OPTPROC_VENDOR_OPT) == 0)
       || ! SUCCESSFUL(opt_find_long(pOpts, vopt_str, &opt_st))
       || ! SUCCESSFUL(get_opt_arg(pOpts, &opt_st)) )
    {
        fprintf(stderr, zIllVendOptStr, pOpts->pzProgName, vopt_str);
        (*pOpts->pUsageProc)(pOpts, EXIT_FAILURE);

        _exit(EXIT_FAILURE);
    }




    if (pOpts->fOptSet & OPTPROC_IMMEDIATE) {



        if (DO_IMMEDIATELY(opt_st.flags))
            (void)handle_opt(pOpts, &opt_st);

    } else {




        if (DO_NORMALLY(opt_st.flags) || DO_SECOND_TIME(opt_st.flags))
            (void)handle_opt(pOpts, &opt_st);
    }
}
