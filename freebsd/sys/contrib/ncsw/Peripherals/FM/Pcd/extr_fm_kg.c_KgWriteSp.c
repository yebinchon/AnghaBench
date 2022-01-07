
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {TYPE_4__* p_FmPcdKg; scalar_t__ h_Hc; } ;
typedef TYPE_1__ t_FmPcd ;
typedef scalar_t__ t_Error ;
struct fman_kg_regs {int dummy; } ;
struct TYPE_7__ {struct fman_kg_regs* p_FmPcdKgRegs; } ;


 scalar_t__ E_OK ;
 scalar_t__ FmHcKgWriteSp (scalar_t__,int ,int ,int) ;
 int FmPcdKgBuildReadPortSchemeBindActionReg (int ) ;
 int FmPcdKgBuildWritePortSchemeBindActionReg (int ) ;
 int KgHwLock (TYPE_4__*) ;
 int KgHwUnlock (TYPE_4__*,int ) ;
 int MINOR ;
 int NO_MSG ;
 int RETURN_ERROR (int ,scalar_t__,int ) ;
 scalar_t__ WriteKgarWait (TYPE_1__*,int ) ;
 int fman_kg_write_sp (struct fman_kg_regs*,int ,int) ;

__attribute__((used)) static t_Error KgWriteSp(t_FmPcd *p_FmPcd, uint8_t hardwarePortId, uint32_t spReg, bool add)
{
    struct fman_kg_regs *p_KgRegs;

    uint32_t tmpKgarReg = 0, intFlags;
    t_Error err = E_OK;




    if (p_FmPcd->h_Hc)
        return FmHcKgWriteSp(p_FmPcd->h_Hc, hardwarePortId, spReg, add);

    p_KgRegs = p_FmPcd->p_FmPcdKg->p_FmPcdKgRegs;

    tmpKgarReg = FmPcdKgBuildReadPortSchemeBindActionReg(hardwarePortId);

    intFlags = KgHwLock(p_FmPcd->p_FmPcdKg);
    err = WriteKgarWait(p_FmPcd, tmpKgarReg);
    if (err)
    {
        KgHwUnlock(p_FmPcd->p_FmPcdKg, intFlags);
        RETURN_ERROR(MINOR, err, NO_MSG);
    }

    fman_kg_write_sp(p_KgRegs, spReg, add);

    tmpKgarReg = FmPcdKgBuildWritePortSchemeBindActionReg(hardwarePortId);

    err = WriteKgarWait(p_FmPcd, tmpKgarReg);
    KgHwUnlock(p_FmPcd->p_FmPcdKg, intFlags);
    return err;
}
