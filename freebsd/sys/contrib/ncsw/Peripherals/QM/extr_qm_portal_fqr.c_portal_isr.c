
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int options; int (* f_LoopDequeueRingCB ) (TYPE_2__*) ;TYPE_4__* p_LowQmPortal; } ;
typedef TYPE_2__ t_QmPortal ;
struct TYPE_8__ {int cpu; } ;
struct TYPE_10__ {TYPE_1__ config; } ;


 int DBG (int ,char*) ;
 int LoopMessageRing (TYPE_2__*,int) ;
 int QMAN_PORTAL_FLAG_IRQ_FAST ;
 int QMAN_PORTAL_FLAG_IRQ_SLOW ;
 int TRACE ;
 int qm_isr_enable_read (TYPE_4__*) ;
 int qm_isr_status_clear (TYPE_4__*,int) ;
 int qm_isr_status_read (TYPE_4__*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void portal_isr(void *ptr)
{
    t_QmPortal *p_QmPortal = ptr;
    uint32_t event = 0;
    uint32_t enableEvents = qm_isr_enable_read(p_QmPortal->p_LowQmPortal);

    DBG(TRACE, ("software-portal %d got interrupt", p_QmPortal->p_LowQmPortal->config.cpu));

    event |= (qm_isr_status_read(p_QmPortal->p_LowQmPortal) &
            enableEvents);

    qm_isr_status_clear(p_QmPortal->p_LowQmPortal, event);

    if (
        (p_QmPortal->options & QMAN_PORTAL_FLAG_IRQ_FAST))
        p_QmPortal->f_LoopDequeueRingCB(p_QmPortal);
    if (p_QmPortal->options & QMAN_PORTAL_FLAG_IRQ_SLOW)
        LoopMessageRing(p_QmPortal, event);
}
