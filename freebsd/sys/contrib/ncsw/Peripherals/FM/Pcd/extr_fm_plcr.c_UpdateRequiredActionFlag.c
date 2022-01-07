
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_6__ {TYPE_2__* p_FmPcdPlcr; } ;
typedef TYPE_3__ t_FmPcd ;
struct TYPE_5__ {TYPE_1__* profiles; } ;
struct TYPE_4__ {int requiredActionFlag; scalar_t__ requiredAction; int valid; } ;


 int ASSERT_COND (int ) ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static void UpdateRequiredActionFlag(t_Handle h_FmPcd, uint16_t absoluteProfileId, bool set)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;



    ASSERT_COND(p_FmPcd->p_FmPcdPlcr->profiles[absoluteProfileId].valid);

    if (set)
        p_FmPcd->p_FmPcdPlcr->profiles[absoluteProfileId].requiredActionFlag = TRUE;
    else
    {
        p_FmPcd->p_FmPcdPlcr->profiles[absoluteProfileId].requiredAction = 0;
        p_FmPcd->p_FmPcdPlcr->profiles[absoluteProfileId].requiredActionFlag = FALSE;
    }
}
