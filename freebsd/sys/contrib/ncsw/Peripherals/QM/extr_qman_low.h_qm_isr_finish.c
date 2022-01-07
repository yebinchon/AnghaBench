
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_portal {int dummy; } ;


 int QM_BIND_ISR ;
 int __qm_portal_unbind (struct qm_portal*,int ) ;

__attribute__((used)) static __inline__ void qm_isr_finish(struct qm_portal *portal)
{
    __qm_portal_unbind(portal, QM_BIND_ISR);
}
