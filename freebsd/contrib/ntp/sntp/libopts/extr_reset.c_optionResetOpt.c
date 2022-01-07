
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint8_t ;
typedef int tSuccess ;
struct TYPE_20__ {int (* pUsageProc ) (TYPE_2__*,int ) ;int pzProgPath; int pzProgName; int * originalOptArgCookie; } ;
typedef TYPE_2__ tOptions ;
struct TYPE_21__ {int pOD; } ;
typedef TYPE_3__ tOptState ;
struct TYPE_19__ {char* argString; } ;
struct TYPE_22__ {char const* pz_Name; TYPE_1__ optArg; } ;
typedef TYPE_4__ tOptDesc ;


 int DEFINED ;
 int EXIT_FAILURE ;
 int HAS_originalOptArgArray (TYPE_2__*) ;
 char const NUL ;
 TYPE_2__* OPTPROC_EMIT_LIMIT ;
 TYPE_3__ OPTSTATE_INITIALIZER (int ) ;
 int SUCCESSFUL (int ) ;
 int ao_bug (int ) ;
 int assert (int) ;
 int fprintf (int ,char*,int ,...) ;
 int opt_find_long (TYPE_2__*,char const*,TYPE_3__*) ;
 int opt_find_short (TYPE_2__*,int ,TYPE_3__*) ;
 int optionReset (TYPE_2__*,int ) ;
 int optionResetEverything (TYPE_2__*) ;
 int stderr ;
 int stub1 (TYPE_2__*,int ) ;
 int stub2 (TYPE_2__*,int ) ;
 int stub3 (TYPE_2__*,int ) ;
 char* zIllOptChr ;
 char* zIllOptStr ;
 int zno_reset ;
 char* zreset_arg ;

void
optionResetOpt(tOptions * pOpts, tOptDesc * pOD)
{
    static bool reset_active = 0;

    tOptState opt_state = OPTSTATE_INITIALIZER(DEFINED);
    char const * pzArg = pOD->optArg.argString;
    tSuccess succ;

    if (pOpts <= OPTPROC_EMIT_LIMIT)
        return;

    if (reset_active)
        return;

    if ( (! HAS_originalOptArgArray(pOpts))
       || (pOpts->originalOptArgCookie == ((void*)0)))
        ao_bug(zno_reset);

    if ((pzArg == ((void*)0)) || (*pzArg == NUL)) {
        fprintf(stderr, zreset_arg, pOpts->pzProgName, pOD->pz_Name);
        pOpts->pUsageProc(pOpts, EXIT_FAILURE);

        assert(0 == 1);
    }

    reset_active = 1;

    if (pzArg[1] == NUL) {
        if (*pzArg == '*') {
            optionResetEverything(pOpts);
            reset_active = 0;
            return;
        }

        succ = opt_find_short(pOpts, (uint8_t)*pzArg, &opt_state);
        if (! SUCCESSFUL(succ)) {
            fprintf(stderr, zIllOptChr, pOpts->pzProgPath, *pzArg);
            pOpts->pUsageProc(pOpts, EXIT_FAILURE);

            assert(0 == 1);
        }
    } else {
        succ = opt_find_long(pOpts, pzArg, &opt_state);
        if (! SUCCESSFUL(succ)) {
            fprintf(stderr, zIllOptStr, pOpts->pzProgPath, pzArg);
            pOpts->pUsageProc(pOpts, EXIT_FAILURE);

            assert(0 == 1);
        }
    }







    optionReset(pOpts, opt_state.pOD);
    reset_active = 0;
}
