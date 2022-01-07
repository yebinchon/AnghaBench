
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int requiredAction; int valid; } ;
typedef TYPE_1__ t_FmPcdKgScheme ;


 int ASSERT_COND (int ) ;

void FmPcdKgUpdateRequiredAction(t_Handle h_Scheme, uint32_t requiredAction)
{
    t_FmPcdKgScheme *p_Scheme = (t_FmPcdKgScheme *)h_Scheme;



    ASSERT_COND(p_Scheme->valid);

    p_Scheme->requiredAction |= requiredAction;
}
