
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_1__* p_FmPcdKg; } ;
typedef TYPE_2__ t_FmPcd ;
typedef int t_Error ;
struct fman_kg_regs {int dummy; } ;
struct TYPE_4__ {struct fman_kg_regs* p_FmPcdKgRegs; } ;


 int E_INVALID_STATE ;
 int E_OK ;
 int MINOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 scalar_t__ fman_kg_write_ar_wait (struct fman_kg_regs*,int ) ;

__attribute__((used)) static t_Error WriteKgarWait(t_FmPcd *p_FmPcd, uint32_t fmkg_ar)
{

    struct fman_kg_regs *regs = p_FmPcd->p_FmPcdKg->p_FmPcdKgRegs;

    if (fman_kg_write_ar_wait(regs, fmkg_ar))
        RETURN_ERROR(MINOR, E_INVALID_STATE, ("Keygen scheme access violation"));

    return E_OK;
}
