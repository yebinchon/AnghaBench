
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int fOptSet; int pzProgName; } ;
typedef TYPE_2__ tOptions ;
struct TYPE_9__ {int argString; } ;
struct TYPE_11__ {int fOptState; TYPE_1__ optArg; } ;
typedef TYPE_3__ tOptDesc ;
struct stat {int st_mode; } ;


 int DIRECTION_CALLED ;
 scalar_t__ DISABLED_OPT (TYPE_3__*) ;
 int EINVAL ;
 TYPE_2__* OPTPROC_EMIT_LIMIT ;
 int OPTPROC_ERRSTOP ;
 int OPTST_RESET ;
 int S_ISREG (int ) ;
 int errno ;
 int file_preset (TYPE_2__*,int ,int ) ;
 int fserr_exit (int ,char*,int ) ;
 scalar_t__ stat (int ,struct stat*) ;

void
optionLoadOpt(tOptions * opts, tOptDesc * odesc)
{
    struct stat sb;

    if (opts <= OPTPROC_EMIT_LIMIT)
        return;







    if ( DISABLED_OPT(odesc)
       || ((odesc->fOptState & OPTST_RESET) != 0))
        return;

    if (stat(odesc->optArg.argString, &sb) != 0) {
        if ((opts->fOptSet & OPTPROC_ERRSTOP) == 0)
            return;

        fserr_exit(opts->pzProgName, "stat", odesc->optArg.argString);

    }

    if (! S_ISREG(sb.st_mode)) {
        if ((opts->fOptSet & OPTPROC_ERRSTOP) == 0)
            return;
        errno = EINVAL;
        fserr_exit(opts->pzProgName, "stat", odesc->optArg.argString);

    }

    file_preset(opts, odesc->optArg.argString, DIRECTION_CALLED);
}
