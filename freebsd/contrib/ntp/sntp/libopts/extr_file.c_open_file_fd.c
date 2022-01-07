
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int file_flags; } ;
typedef TYPE_2__ tuFileMode ;
struct TYPE_10__ {int pzProgName; } ;
typedef TYPE_3__ tOptions ;
struct TYPE_8__ {int argFd; int argString; } ;
struct TYPE_11__ {int fOptState; TYPE_1__ optArg; int optCookie; } ;
typedef TYPE_4__ tOptDesc ;


 int AGDUPSTR (int ,int ,char*) ;
 int OPTST_ALLOC_ARG ;
 int VOIDP (int ) ;
 int fserr_exit (int ,char*,int ) ;
 int open (int ,int ) ;

__attribute__((used)) static void
open_file_fd(tOptions * pOpts, tOptDesc * pOD, tuFileMode mode)
{
    int fd = open(pOD->optArg.argString, mode.file_flags);
    if (fd < 0)
        fserr_exit(pOpts->pzProgName, "open", pOD->optArg.argString);


    if ((pOD->fOptState & OPTST_ALLOC_ARG) != 0)
        pOD->optCookie = VOIDP(pOD->optArg.argString);
    else
        AGDUPSTR(pOD->optCookie, pOD->optArg.argString, "file name");

    pOD->optArg.argFd = fd;
    pOD->fOptState &= ~OPTST_ALLOC_ARG;
}
