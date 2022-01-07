
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_Error ;
struct qm_portal {int dummy; } ;


 int ERROR_CODE (int ) ;
 int E_BUSY ;
 int E_OK ;
 int QM_BIND_ISR ;
 scalar_t__ __qm_portal_bind (struct qm_portal*,int ) ;

__attribute__((used)) static __inline__ t_Error qm_isr_init(struct qm_portal *portal)
{
    if (__qm_portal_bind(portal, QM_BIND_ISR))
        return ERROR_CODE(E_BUSY);
    return E_OK;
}
