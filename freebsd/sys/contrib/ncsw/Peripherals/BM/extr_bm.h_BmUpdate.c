
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int p_BmPortalLow; TYPE_1__* cbs; } ;
typedef TYPE_2__ t_BmPortal ;
typedef size_t bmRingType_t ;
struct TYPE_4__ {int (* f_BmUpdateCb ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static __inline__ uint8_t BmUpdate(t_BmPortal *p_BmPortal, bmRingType_t type)
{
    return p_BmPortal->cbs[type].f_BmUpdateCb(p_BmPortal->p_BmPortalLow);
}
