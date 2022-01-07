
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
typedef int t_Error ;
struct fman_kg_regs {int dummy; } ;
struct TYPE_7__ {struct fman_kg_regs* p_FmPcdKgRegs; } ;


 int FmHcKgWriteCpp (scalar_t__,int ,int ) ;
 int FmPcdKgBuildWritePortClsPlanBindActionReg (int ) ;
 int KgHwLock (TYPE_4__*) ;
 int KgHwUnlock (TYPE_4__*,int ) ;
 int WriteKgarWait (TYPE_1__*,int ) ;
 int fman_kg_write_cpp (struct fman_kg_regs*,int ) ;

__attribute__((used)) static t_Error KgWriteCpp(t_FmPcd *p_FmPcd, uint8_t hardwarePortId, uint32_t cppReg)
{
    struct fman_kg_regs *p_KgRegs;
    uint32_t tmpKgarReg, intFlags;
    t_Error err;

    p_KgRegs = p_FmPcd->p_FmPcdKg->p_FmPcdKgRegs;

    if (p_FmPcd->h_Hc)
    {
        err = FmHcKgWriteCpp(p_FmPcd->h_Hc, hardwarePortId, cppReg);
        return err;
    }

    intFlags = KgHwLock(p_FmPcd->p_FmPcdKg);
    fman_kg_write_cpp(p_KgRegs, cppReg);
    tmpKgarReg = FmPcdKgBuildWritePortClsPlanBindActionReg(hardwarePortId);
    err = WriteKgarWait(p_FmPcd, tmpKgarReg);
    KgHwUnlock(p_FmPcd->p_FmPcdKg, intFlags);

    return err;
}
