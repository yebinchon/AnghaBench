
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_13__ {int fOptSet; int (* pUsageProc ) (TYPE_2__*,int ) ;int pzProgName; int * pzPkgDataDir; } ;
typedef TYPE_2__ tOptions ;
struct TYPE_12__ {scalar_t__ argInt; int argString; } ;
struct TYPE_14__ {int fOptState; TYPE_1__ optArg; } ;
typedef TYPE_3__ tOptDesc ;
struct tm {int dummy; } ;
typedef int fmt ;


 char* AGALOC (scalar_t__,char const*) ;
 int AGFREE (int ) ;
 scalar_t__ BAD_TIME ;
 int EXIT_FAILURE ;
 int HAS_pzPkgDataDir (TYPE_2__*) ;
 scalar_t__ INQUERY_CALL (TYPE_2__*,TYPE_3__*) ;
 int OPTPROC_ERRSTOP ;
 int OPTST_ALLOC_ARG ;
 int R_OK ;
 scalar_t__ access (char*,int ) ;
 int fprintf (int ,char*,int ,int ) ;
 scalar_t__ getdate_r (int ,struct tm*) ;
 scalar_t__ mktime (struct tm*) ;
 int optionTimeVal (TYPE_2__*,TYPE_3__*) ;
 int putenv (char*) ;
 int sprintf (char*,char const*,int *) ;
 int stderr ;
 scalar_t__ strlen (int *) ;
 int stub1 (TYPE_2__*,int ) ;
 scalar_t__ time (int *) ;
 char* zNotDate ;

void
optionTimeDate(tOptions * opts, tOptDesc * od)
{
    optionTimeVal(opts, od);
    if (od->optArg.argInt != BAD_TIME)
        od->optArg.argInt += (long)time(((void*)0));
}
