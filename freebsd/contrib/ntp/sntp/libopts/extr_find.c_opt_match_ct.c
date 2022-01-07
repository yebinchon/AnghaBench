
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int optCt; TYPE_2__* pOptDesc; } ;
typedef TYPE_1__ tOptions ;
struct TYPE_6__ {scalar_t__* pz_Name; int fOptState; scalar_t__* pz_DisableName; } ;
typedef TYPE_2__ tOptDesc ;


 scalar_t__ NUL ;
 int OPTST_NO_INIT ;
 int OPTST_OMITTED ;
 scalar_t__ SKIP_OPT (TYPE_2__*) ;
 scalar_t__ strneqvcmp (char const*,scalar_t__*,int) ;

__attribute__((used)) static int
opt_match_ct(tOptions * opts, char const * name, int nm_len,
             int * ixp, bool * disable)
{
    int matchCt = 0;
    int idx = 0;
    int idxLim = opts->optCt;
    tOptDesc * pOD = opts->pOptDesc;

    do {



        if (pOD->pz_Name == ((void*)0))
            continue;

        if ( SKIP_OPT(pOD)
           && (pOD->fOptState != (OPTST_OMITTED | OPTST_NO_INIT)))
            continue;

        if (strneqvcmp(name, pOD->pz_Name, nm_len) == 0) {




            if (pOD->pz_Name[ nm_len ] == NUL) {
                *ixp = idx;
                return 1;
            }
        }






        else if ( (pOD->pz_DisableName != ((void*)0))
                && (strneqvcmp(name, pOD->pz_DisableName, nm_len) == 0)
                ) {
            *disable = 1;





            if (pOD->pz_DisableName[ nm_len ] == NUL) {
                *ixp = idx;
                return 1;
            }
        }

        else
            continue;





        *ixp = idx;
        ++matchCt;

    } while (pOD++, (++idx < idxLim));

    return matchCt;
}
