
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* h_Portals; } ;
typedef TYPE_1__ t_Qm ;
typedef scalar_t__ t_Handle ;


 int ASSERT_COND (TYPE_1__*) ;
 size_t CORE_GetId () ;

__attribute__((used)) static __inline__ t_Handle QmGetPortalHandle(t_Handle h_Qm)
{
    t_Qm *p_Qm = (t_Qm*)h_Qm;

    ASSERT_COND(p_Qm);
    return p_Qm->h_Portals[CORE_GetId()];
}
