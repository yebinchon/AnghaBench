
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_10__ {int fOptSet; int (* pUsageProc ) (TYPE_2__*,int ) ;int pzProgName; } ;
typedef TYPE_2__ tOptions ;
struct TYPE_9__ {long argInt; int argString; } ;
struct TYPE_11__ {int fOptState; TYPE_1__ optArg; } ;
typedef TYPE_3__ tOptDesc ;


 int AGFREE (int ) ;
 scalar_t__ BAD_TIME ;
 int EXIT_FAILURE ;
 scalar_t__ INQUERY_CALL (TYPE_2__*,TYPE_3__*) ;
 int OPTPROC_ERRSTOP ;
 int OPTST_ALLOC_ARG ;
 int fprintf (int ,char*,int ,int ) ;
 scalar_t__ parse_duration (int ) ;
 int stderr ;
 int stub1 (TYPE_2__*,int ) ;
 char* zNotDuration ;

void
optionTimeVal(tOptions * opts, tOptDesc * od)
{
    time_t val;

    if (INQUERY_CALL(opts, od))
        return;

    val = parse_duration(od->optArg.argString);
    if (val == BAD_TIME) {
        fprintf(stderr, zNotDuration, opts->pzProgName, od->optArg.argString);
        if ((opts->fOptSet & OPTPROC_ERRSTOP) != 0)
            (*(opts->pUsageProc))(opts, EXIT_FAILURE);
    }

    if (od->fOptState & OPTST_ALLOC_ARG) {
        AGFREE(od->optArg.argString);
        od->fOptState &= ~OPTST_ALLOC_ARG;
    }

    od->optArg.argInt = (long)val;
}
