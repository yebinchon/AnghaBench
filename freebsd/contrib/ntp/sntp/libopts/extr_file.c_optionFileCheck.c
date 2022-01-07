
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tuFileMode ;
typedef int teOptFileType ;
typedef int tOptions ;
struct TYPE_6__ {int fOptState; int * optCookie; } ;
typedef TYPE_1__ tOptDesc ;


 int AGFREE (int *) ;
 int FTYPE_MODE_EXIST_MASK ;





 int FTYPE_MODE_OPEN_MASK ;
 int * OPTPROC_EMIT_LIMIT ;
 int * OPTPROC_EMIT_USAGE ;
 int OPTST_RESET ;
 int check_existence (int,int *,TYPE_1__*) ;
 int fopen_file_fp (int *,TYPE_1__*,int ) ;
 int fputs (scalar_t__,int ) ;
 int open_file_fd (int *,TYPE_1__*,int ) ;
 int option_usage_fp ;
 scalar_t__ tab_skip_ct ;
 scalar_t__ zFileCannotExist ;
 scalar_t__ zFileMustExist ;

void
optionFileCheck(tOptions * pOpts, tOptDesc * pOD,
                teOptFileType ftype, tuFileMode mode)
{
    if (pOpts <= OPTPROC_EMIT_LIMIT) {
        if (pOpts != OPTPROC_EMIT_USAGE)
            return;

        switch (ftype & FTYPE_MODE_EXIST_MASK) {
        case 130:
            fputs(zFileCannotExist + tab_skip_ct, option_usage_fp);
            break;

        case 131:
            fputs(zFileMustExist + tab_skip_ct, option_usage_fp);
            break;
        }
        return;
    }

    if ((pOD->fOptState & OPTST_RESET) != 0) {
        if (pOD->optCookie != ((void*)0))
            AGFREE(pOD->optCookie);
        return;
    }

    check_existence(ftype, pOpts, pOD);

    switch (ftype & FTYPE_MODE_OPEN_MASK) {
    default:
    case 129: break;
    case 128: open_file_fd( pOpts, pOD, mode); break;
    case 132: fopen_file_fp(pOpts, pOD, mode); break;
    }
}
