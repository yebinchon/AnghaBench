
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pzProgName; } ;
typedef TYPE_1__ tOptions ;
struct TYPE_6__ {int optOccCt; int optMinCt; int fOptState; int pz_Name; } ;
typedef TYPE_2__ tOptDesc ;


 int OPTST_MUST_SET ;
 int OPTST_PRESET ;
 int OPTST_SET ;
 int fprintf (int ,char*,int ,int ,...) ;
 int stderr ;
 char* zneed_more ;
 char* zneed_one ;

__attribute__((used)) static bool
occurs_enough(tOptions * pOpts, tOptDesc * pOD)
{
    (void)pOpts;





    if (pOD->optOccCt >= pOD->optMinCt)
        return 1;





    if ( (pOD->fOptState & OPTST_MUST_SET)
       && (pOD->fOptState & (OPTST_PRESET | OPTST_SET)) )
        return 1;

    if (pOD->optMinCt > 1)
         fprintf(stderr, zneed_more, pOpts->pzProgName, pOD->pz_Name,
                 pOD->optMinCt);
    else fprintf(stderr, zneed_one, pOpts->pzProgName, pOD->pz_Name);
    return 0;
}
