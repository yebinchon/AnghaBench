
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int lock; int h_FqidMm; int h_RsrvFqidMm; } ;
typedef TYPE_1__ t_Qm ;


 scalar_t__ ILLEGAL_BASE ;
 scalar_t__ MM_Get (int ,scalar_t__,scalar_t__,char*) ;
 scalar_t__ MM_GetForce (int ,scalar_t__,scalar_t__,char*) ;
 int MM_Put (int ,scalar_t__) ;
 scalar_t__ XX_LockIntrSpinlock (int ) ;
 int XX_UnlockIntrSpinlock (int ,scalar_t__) ;

__attribute__((used)) static uint32_t ReserveFqids(t_Qm *p_Qm, uint32_t size, uint32_t alignment, bool force, uint32_t base)
{
    uint64_t ans;
    uint32_t intFlags;

    intFlags = XX_LockIntrSpinlock(p_Qm->lock);
    if (force)
        ans = MM_GetForce(p_Qm->h_FqidMm,
                          (uint64_t)base,
                          (uint64_t)size,
                          "QM FQID MEM");
    else
        ans = MM_Get(p_Qm->h_FqidMm,
                     (uint64_t)size,
                     alignment,
                     "QM FQID MEM");
    if (ans == ILLEGAL_BASE)
    {
        XX_UnlockIntrSpinlock(p_Qm->lock, intFlags);
        return (uint32_t)ans;
    }
    base = (uint32_t)ans;
    ans = MM_GetForce(p_Qm->h_RsrvFqidMm,
                      (uint64_t)base,
                      (uint64_t)size,
                      "QM rsrv FQID MEM");
    if (ans == ILLEGAL_BASE)
    {
        MM_Put(p_Qm->h_FqidMm, (uint64_t)base);
        XX_UnlockIntrSpinlock(p_Qm->lock, intFlags);
        return (uint32_t)ans;
    }
    XX_UnlockIntrSpinlock(p_Qm->lock, intFlags);

    return (uint32_t)base;
}
