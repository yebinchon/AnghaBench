
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {scalar_t__* enqueued; int h_QmArg; scalar_t__ (* f_QmEnqueue ) (int ,void*) ;int h_FmPcd; } ;
typedef TYPE_1__ t_FmHc ;
typedef scalar_t__ t_Error ;
typedef int t_DpaaFD ;


 int ASSERT_COND (int) ;
 int DBG (int ,char*) ;
 int DPAA_FD_GET_ADDR (int *) ;
 int DPAA_FD_GET_OFFSET (int *) ;
 scalar_t__ E_OK ;
 scalar_t__ E_TIMEOUT ;
 size_t FmPcdLock (int ) ;
 int FmPcdUnlock (int ,size_t) ;
 int MINOR ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int TRACE ;
 scalar_t__ TRUE ;
 int XX_UDelay (int) ;
 scalar_t__ stub1 (int ,void*) ;

__attribute__((used)) static __inline__ t_Error EnQFrm(t_FmHc *p_FmHc, t_DpaaFD *p_FmFd, uint32_t seqNum)
{
    t_Error err = E_OK;
    uint32_t intFlags;
    uint32_t timeout=100;

    intFlags = FmPcdLock(p_FmHc->h_FmPcd);
    ASSERT_COND(!p_FmHc->enqueued[seqNum]);
    p_FmHc->enqueued[seqNum] = TRUE;
    FmPcdUnlock(p_FmHc->h_FmPcd, intFlags);
    DBG(TRACE, ("Send Hc, SeqNum %d, buff@0x%x, fd offset 0x%x",
                seqNum,
                DPAA_FD_GET_ADDR(p_FmFd),
                DPAA_FD_GET_OFFSET(p_FmFd)));
    err = p_FmHc->f_QmEnqueue(p_FmHc->h_QmArg, (void *)p_FmFd);
    if (err)
        RETURN_ERROR(MINOR, err, ("HC enqueue failed"));

    while (p_FmHc->enqueued[seqNum] && --timeout)
        XX_UDelay(100);

    if (!timeout)
        RETURN_ERROR(MINOR, E_TIMEOUT, ("HC Callback, timeout exceeded"));

    return err;
}
