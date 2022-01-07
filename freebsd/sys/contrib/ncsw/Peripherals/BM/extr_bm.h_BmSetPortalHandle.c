
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {scalar_t__* h_Portals; } ;
typedef TYPE_1__ t_Bm ;
typedef size_t e_DpaaSwPortal ;


 int ASSERT_COND (int) ;

__attribute__((used)) static __inline__ void BmSetPortalHandle(t_Handle h_Bm, t_Handle h_Portal, e_DpaaSwPortal portalId)
{
    ASSERT_COND(!((t_Bm*)h_Bm)->h_Portals[portalId] || !h_Portal);
    ((t_Bm*)h_Bm)->h_Portals[portalId] = h_Portal;
}
