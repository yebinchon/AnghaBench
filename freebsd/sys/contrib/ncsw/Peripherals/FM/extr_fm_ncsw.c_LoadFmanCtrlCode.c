
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {int size; int* p_Code; } ;
struct TYPE_7__ {TYPE_1__ firmware; scalar_t__ fwVerify; scalar_t__ baseAddr; } ;
typedef TYPE_2__ t_Fm ;
struct TYPE_8__ {int iready; int iadd; int idata; } ;
typedef TYPE_3__ t_FMIramRegs ;
typedef int t_Error ;


 int ASSERT_COND (TYPE_2__*) ;
 int DBG (int ,char*) ;
 int E_OK ;
 int E_WRITE_FAILED ;
 scalar_t__ FM_MM_IMEM ;
 int GET_UINT32 (int ) ;
 int INFO ;
 int IRAM_IADD_AIE ;
 int IRAM_READY ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 scalar_t__ UINT_TO_PTR (scalar_t__) ;
 int WRITE_UINT32 (int ,int) ;
 int XX_UDelay (int) ;

__attribute__((used)) static t_Error LoadFmanCtrlCode(t_Fm *p_Fm)
{
    t_FMIramRegs *p_Iram;
    int i;
    uint32_t tmp;
    uint8_t compTo16;

    ASSERT_COND(p_Fm);
    p_Iram = (t_FMIramRegs *)UINT_TO_PTR(p_Fm->baseAddr + FM_MM_IMEM);


    WRITE_UINT32(p_Iram->iadd, IRAM_IADD_AIE);
    while (GET_UINT32(p_Iram->iadd) != IRAM_IADD_AIE) ;

    for (i=0; i < (p_Fm->firmware.size / 4); i++)
        WRITE_UINT32(p_Iram->idata, p_Fm->firmware.p_Code[i]);

    compTo16 = (uint8_t)(p_Fm->firmware.size % 16);
    if (compTo16)
        for (i=0; i < ((16-compTo16) / 4); i++)
            WRITE_UINT32(p_Iram->idata, 0xffffffff);

    WRITE_UINT32(p_Iram->iadd,p_Fm->firmware.size-4);
    while (GET_UINT32(p_Iram->iadd) != (p_Fm->firmware.size-4)) ;


    while (GET_UINT32(p_Iram->idata) != p_Fm->firmware.p_Code[(p_Fm->firmware.size / 4)-1]) ;

    if (p_Fm->fwVerify)
    {
        WRITE_UINT32(p_Iram->iadd, IRAM_IADD_AIE);
        while (GET_UINT32(p_Iram->iadd) != IRAM_IADD_AIE) ;
        for (i=0; i < (p_Fm->firmware.size / 4); i++)
        {
            tmp = GET_UINT32(p_Iram->idata);
            if (tmp != p_Fm->firmware.p_Code[i])
                RETURN_ERROR(MAJOR, E_WRITE_FAILED,
                             ("UCode write error : write 0x%x, read 0x%x",
                              p_Fm->firmware.p_Code[i],tmp));
        }
        WRITE_UINT32(p_Iram->iadd, 0x0);
    }


    WRITE_UINT32(p_Iram->iready, IRAM_READY);
    XX_UDelay(1000);

    DBG(INFO, ("FMan-Controller code (ver %d.%d.%d) loaded to IRAM.",
               ((uint16_t *)p_Fm->firmware.p_Code)[2],
               ((uint8_t *)p_Fm->firmware.p_Code)[6],
               ((uint8_t *)p_Fm->firmware.p_Code)[7]));

    return E_OK;
}
