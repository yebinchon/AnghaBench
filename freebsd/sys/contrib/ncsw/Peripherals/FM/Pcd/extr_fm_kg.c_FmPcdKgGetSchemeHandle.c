
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int * t_Handle ;
struct TYPE_5__ {TYPE_1__* p_FmPcdKg; } ;
typedef TYPE_2__ t_FmPcd ;
struct TYPE_4__ {size_t numOfSchemes; int * schemes; } ;


 int ASSERT_COND (TYPE_2__*) ;
 int E_NOT_IN_RANGE ;
 int FmPcdKgIsSchemeValidSw (int *) ;
 int MAJOR ;
 int REPORT_ERROR (int ,int ,char*) ;

t_Handle FmPcdKgGetSchemeHandle(t_Handle h_FmPcd, uint8_t relativeSchemeId)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;

    ASSERT_COND(p_FmPcd);


    if (relativeSchemeId >= p_FmPcd->p_FmPcdKg->numOfSchemes)
    {
        REPORT_ERROR(MAJOR, E_NOT_IN_RANGE, ("relative-scheme-id %d!", relativeSchemeId));
        return ((void*)0);
    }

    if (!FmPcdKgIsSchemeValidSw(&p_FmPcd->p_FmPcdKg->schemes[relativeSchemeId]))
        return ((void*)0);

    return &p_FmPcd->p_FmPcdKg->schemes[relativeSchemeId];
}
