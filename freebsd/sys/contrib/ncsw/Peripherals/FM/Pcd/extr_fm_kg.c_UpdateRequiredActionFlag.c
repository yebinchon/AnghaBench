
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int requiredActionFlag; scalar_t__ requiredAction; struct TYPE_4__* valid; } ;
typedef TYPE_1__ t_FmPcdKgScheme ;


 int ASSERT_COND (TYPE_1__*) ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static void UpdateRequiredActionFlag(t_FmPcdKgScheme *p_Scheme, bool set)
{

    ASSERT_COND(p_Scheme);
    ASSERT_COND(p_Scheme->valid);

    if (set)
        p_Scheme->requiredActionFlag = TRUE;
    else
    {
        p_Scheme->requiredAction = 0;
        p_Scheme->requiredActionFlag = FALSE;
    }
}
