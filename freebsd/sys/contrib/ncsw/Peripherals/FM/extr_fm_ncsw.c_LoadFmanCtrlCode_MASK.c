#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_6__ {int size; int* p_Code; } ;
struct TYPE_7__ {TYPE_1__ firmware; scalar_t__ fwVerify; scalar_t__ baseAddr; } ;
typedef  TYPE_2__ t_Fm ;
struct TYPE_8__ {int /*<<< orphan*/  iready; int /*<<< orphan*/  iadd; int /*<<< orphan*/  idata; } ;
typedef  TYPE_3__ t_FMIramRegs ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  E_WRITE_FAILED ; 
 scalar_t__ FM_MM_IMEM ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFO ; 
 int IRAM_IADD_AIE ; 
 int IRAM_READY ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static t_Error FUNC7(t_Fm *p_Fm)
{
    t_FMIramRegs    *p_Iram;
    int             i;
    uint32_t        tmp;
    uint8_t         compTo16;

    FUNC0(p_Fm);
    p_Iram = (t_FMIramRegs *)FUNC4(p_Fm->baseAddr + FM_MM_IMEM);

    /* Enable the auto-increment */
    FUNC5(p_Iram->iadd, IRAM_IADD_AIE);
    while (FUNC2(p_Iram->iadd) != IRAM_IADD_AIE) ;

    for (i=0; i < (p_Fm->firmware.size / 4); i++)
        FUNC5(p_Iram->idata, p_Fm->firmware.p_Code[i]);

    compTo16 = (uint8_t)(p_Fm->firmware.size % 16);
    if (compTo16)
        for (i=0; i < ((16-compTo16) / 4); i++)
            FUNC5(p_Iram->idata, 0xffffffff);

    FUNC5(p_Iram->iadd,p_Fm->firmware.size-4);
    while (FUNC2(p_Iram->iadd) != (p_Fm->firmware.size-4)) ;

    /* verify that writing has completed */
    while (FUNC2(p_Iram->idata) != p_Fm->firmware.p_Code[(p_Fm->firmware.size / 4)-1]) ;

    if (p_Fm->fwVerify)
    {
        FUNC5(p_Iram->iadd, IRAM_IADD_AIE);
        while (FUNC2(p_Iram->iadd) != IRAM_IADD_AIE) ;
        for (i=0; i < (p_Fm->firmware.size / 4); i++)
        {
            tmp = FUNC2(p_Iram->idata);
            if (tmp != p_Fm->firmware.p_Code[i])
                FUNC3(MAJOR, E_WRITE_FAILED,
                             ("UCode write error : write 0x%x, read 0x%x",
                              p_Fm->firmware.p_Code[i],tmp));
        }
        FUNC5(p_Iram->iadd, 0x0);
    }

    /* Enable patch from IRAM */
    FUNC5(p_Iram->iready, IRAM_READY);
    FUNC6(1000);

    FUNC1(INFO, ("FMan-Controller code (ver %d.%d.%d) loaded to IRAM.",
               ((uint16_t *)p_Fm->firmware.p_Code)[2],
               ((uint8_t *)p_Fm->firmware.p_Code)[6],
               ((uint8_t *)p_Fm->firmware.p_Code)[7]));

    return E_OK;
}