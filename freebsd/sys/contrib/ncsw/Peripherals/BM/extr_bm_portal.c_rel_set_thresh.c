
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_BmPortalLow; } ;
typedef TYPE_1__ t_BmPortal ;


 int RCR_ITHRESH ;
 int bm_rcr_get_ithresh (int ) ;
 int bm_rcr_set_ithresh (int ,int ) ;

__attribute__((used)) static __inline__ void rel_set_thresh(t_BmPortal *p_BmPortal, int check)
{
    if (!check || !bm_rcr_get_ithresh(p_BmPortal->p_BmPortalLow))
        bm_rcr_set_ithresh(p_BmPortal->p_BmPortalLow, RCR_ITHRESH);
}
