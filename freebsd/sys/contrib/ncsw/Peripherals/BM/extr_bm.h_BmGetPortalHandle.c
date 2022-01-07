
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_3__ {scalar_t__* h_Portals; } ;
typedef TYPE_1__ t_Bm ;


 int ASSERT_COND (TYPE_1__*) ;
 size_t CORE_GetId () ;

__attribute__((used)) static __inline__ t_Handle BmGetPortalHandle(t_Handle h_Bm)
{
    t_Bm *p_Bm = (t_Bm*)h_Bm;
    ASSERT_COND(p_Bm);
    return p_Bm->h_Portals[CORE_GetId()];
}
