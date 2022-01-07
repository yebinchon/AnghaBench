
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int p_LowQmPortal; } ;
typedef TYPE_1__ t_QmPortal ;
struct qm_eqcr_entry {int dummy; } ;


 scalar_t__ EQCR_THRESH ;
 int qmPortalEqcrCcePrefetch (int ) ;
 int qmPortalEqcrCceUpdate (int ) ;
 scalar_t__ qm_eqcr_get_avail (int ) ;
 struct qm_eqcr_entry* qm_eqcr_start (int ) ;

__attribute__((used)) static inline struct qm_eqcr_entry *try_eq_start(t_QmPortal *p_QmPortal)
{
    struct qm_eqcr_entry *p_Eq;
    uint8_t avail;

    avail = qm_eqcr_get_avail(p_QmPortal->p_LowQmPortal);
    if (avail == EQCR_THRESH)
        qmPortalEqcrCcePrefetch(p_QmPortal->p_LowQmPortal);
    else if (avail < EQCR_THRESH)
            qmPortalEqcrCceUpdate(p_QmPortal->p_LowQmPortal);
    p_Eq = qm_eqcr_start(p_QmPortal->p_LowQmPortal);

    return p_Eq;
}
