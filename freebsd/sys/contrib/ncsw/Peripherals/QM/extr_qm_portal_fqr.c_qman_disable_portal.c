
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_LowQmPortal; int disable_count; } ;
typedef TYPE_1__ t_QmPortal ;


 int NCSW_PLOCK (TYPE_1__*) ;
 int PUNLOCK (TYPE_1__*) ;
 int qm_dqrr_set_maxfill (int ,int ) ;

__attribute__((used)) static void qman_disable_portal(t_QmPortal *p_QmPortal)
{
    NCSW_PLOCK(p_QmPortal);
    if (!(p_QmPortal->disable_count++))
        qm_dqrr_set_maxfill(p_QmPortal->p_LowQmPortal, 0);
    PUNLOCK(p_QmPortal);
}
