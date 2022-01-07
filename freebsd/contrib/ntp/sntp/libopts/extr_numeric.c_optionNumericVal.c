
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int fOptSet; int (* pUsageProc ) (TYPE_2__*,int ) ;int pzProgName; } ;
typedef TYPE_2__ tOptions ;
struct TYPE_9__ {char* argString; long argInt; } ;
struct TYPE_11__ {int fOptState; TYPE_1__ optArg; } ;
typedef TYPE_3__ tOptDesc ;


 int AGFREE (char*) ;
 scalar_t__ EINVAL ;
 int EXIT_FAILURE ;
 scalar_t__ INQUERY_CALL (TYPE_2__*,TYPE_3__*) ;

 int OPTPROC_ERRSTOP ;
 int OPTST_ALLOC_ARG ;
 int OPTST_RESET ;
 int OPTST_SCALED_NUM ;
 scalar_t__ errno ;
 int fprintf (int ,char*,int ,char*) ;
 int stderr ;
 long strtol (char*,char**,int ) ;
 int stub1 (TYPE_2__*,int ) ;
 char* zNotNumber ;

void
optionNumericVal(tOptions * opts, tOptDesc * od)
{
    char * pz;
    long val;





    if (INQUERY_CALL(opts, od) || (od->optArg.argString == ((void*)0)))
        return;







    if ( (od == ((void*)0))
       || (od->optArg.argString == ((void*)0))
       || ((od->fOptState & OPTST_RESET) != 0))
        return;

    errno = 0;
    val = strtol(od->optArg.argString, &pz, 0);
    if ((pz == od->optArg.argString) || (errno != 0))
        goto bad_number;

    if ((od->fOptState & OPTST_SCALED_NUM) != 0)
        switch (*(pz++)) {
        case 128: pz--; break;
        case 't': val *= 1000;
        case 'g': val *= 1000;
        case 'm': val *= 1000;
        case 'k': val *= 1000; break;

        case 'T': val *= 1024;
        case 'G': val *= 1024;
        case 'M': val *= 1024;
        case 'K': val *= 1024; break;

        default: goto bad_number;
        }

    if (*pz != 128)
        goto bad_number;

    if (od->fOptState & OPTST_ALLOC_ARG) {
        AGFREE(od->optArg.argString);
        od->fOptState &= ~OPTST_ALLOC_ARG;
    }

    od->optArg.argInt = val;
    return;

    bad_number:

    fprintf( stderr, zNotNumber, opts->pzProgName, od->optArg.argString );
    if ((opts->fOptSet & OPTPROC_ERRSTOP) != 0)
        (*(opts->pUsageProc))(opts, EXIT_FAILURE);

    errno = EINVAL;
    od->optArg.argInt = ~0;
}
