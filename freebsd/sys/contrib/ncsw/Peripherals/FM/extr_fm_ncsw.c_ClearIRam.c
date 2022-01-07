
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* p_FmStateStruct; scalar_t__ baseAddr; } ;
typedef TYPE_3__ t_Fm ;
struct TYPE_10__ {int idata; int iadd; } ;
typedef TYPE_4__ t_FMIramRegs ;
typedef int t_Error ;
struct TYPE_7__ {int minorRev; int majorRev; } ;
struct TYPE_8__ {TYPE_1__ revInfo; } ;


 int ASSERT_COND (TYPE_3__*) ;
 int CORE_MemoryBarrier () ;
 int E_OK ;
 int FM_IRAM_SIZE (int ,int ) ;
 scalar_t__ FM_MM_IMEM ;
 int GET_UINT32 (int ) ;
 int IRAM_IADD_AIE ;
 scalar_t__ UINT_TO_PTR (scalar_t__) ;
 int WRITE_UINT32 (int ,int) ;

__attribute__((used)) static t_Error ClearIRam(t_Fm *p_Fm)
{
    t_FMIramRegs *p_Iram;
    int i;
    int iram_size;

    ASSERT_COND(p_Fm);
    p_Iram = (t_FMIramRegs *)UINT_TO_PTR(p_Fm->baseAddr + FM_MM_IMEM);
    iram_size = FM_IRAM_SIZE(p_Fm->p_FmStateStruct->revInfo.majorRev,p_Fm->p_FmStateStruct->revInfo.minorRev);


    WRITE_UINT32(p_Iram->iadd, IRAM_IADD_AIE);
    while (GET_UINT32(p_Iram->iadd) != IRAM_IADD_AIE) ;

    for (i=0; i < (iram_size/4); i++)
        WRITE_UINT32(p_Iram->idata, 0xffffffff);

    WRITE_UINT32(p_Iram->iadd, iram_size - 4);
    CORE_MemoryBarrier();
    while (GET_UINT32(p_Iram->idata) != 0xffffffff) ;

    return E_OK;
}
