
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {size_t commandSequence; } ;
typedef TYPE_1__ t_HcFrame ;
typedef scalar_t__ t_Handle ;
struct TYPE_5__ {int h_FmPcd; scalar_t__* enqueued; } ;
typedef TYPE_2__ t_FmHc ;
typedef int t_DpaaFD ;


 int ASSERT_COND (TYPE_2__*) ;
 int DBG (int ,char*) ;
 int DPAA_FD_GET_ADDR (int *) ;
 int DPAA_FD_GET_OFFSET (int *) ;
 int E_INVALID_FRAME ;
 scalar_t__ FALSE ;
 int FmPcdLock (int ) ;
 int FmPcdUnlock (int ,int ) ;
 int MINOR ;
 scalar_t__ PTR_MOVE (int ,int ) ;
 int REPORT_ERROR (int ,int ,char*) ;
 int TRACE ;

void FmHcTxConf(t_Handle h_FmHc, t_DpaaFD *p_Fd)
{
    t_FmHc *p_FmHc = (t_FmHc*)h_FmHc;
    t_HcFrame *p_HcFrame;
    uint32_t intFlags;

    ASSERT_COND(p_FmHc);

    intFlags = FmPcdLock(p_FmHc->h_FmPcd);
    p_HcFrame = (t_HcFrame *)PTR_MOVE(DPAA_FD_GET_ADDR(p_Fd), DPAA_FD_GET_OFFSET(p_Fd));

    DBG(TRACE, ("Hc Conf, SeqNum %d, FD@0x%x, fd offset 0x%x",
                p_HcFrame->commandSequence, DPAA_FD_GET_ADDR(p_Fd), DPAA_FD_GET_OFFSET(p_Fd)));

    if (!(p_FmHc->enqueued[p_HcFrame->commandSequence]))
        REPORT_ERROR(MINOR, E_INVALID_FRAME, ("Not an Host-Command frame received!"));
    else
        p_FmHc->enqueued[p_HcFrame->commandSequence] = FALSE;
    FmPcdUnlock(p_FmHc->h_FmPcd, intFlags);
}
