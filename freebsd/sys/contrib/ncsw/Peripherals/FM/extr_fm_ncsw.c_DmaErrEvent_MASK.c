#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  h_App; int /*<<< orphan*/  (* f_Exception ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__* p_FmStateStruct; int /*<<< orphan*/  (* f_BusError ) (int /*<<< orphan*/ ,scalar_t__,size_t,int /*<<< orphan*/ ,size_t,scalar_t__) ;struct fman_dma_regs* p_FmDmaRegs; } ;
typedef  TYPE_2__ t_Fm ;
struct fman_dma_regs {int dummy; } ;
struct TYPE_4__ {scalar_t__* portsTypes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMA_STATUS_BUS_ERR ; 
 int DMA_STATUS_FM_SPDAT_ECC ; 
 int DMA_STATUS_FM_WRITE_ECC ; 
 int DMA_STATUS_READ_ECC ; 
 int DMA_STATUS_SYSTEM_WRITE_ECC ; 
 int DMA_TRANSFER_LIODN_MASK ; 
 int DMA_TRANSFER_PORTID_MASK ; 
 int DMA_TRANSFER_PORTID_SHIFT ; 
 int DMA_TRANSFER_TNUM_MASK ; 
 int DMA_TRANSFER_TNUM_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 int FUNC2 (int,size_t,int) ; 
 int /*<<< orphan*/  e_FM_EX_DMA_FM_WRITE_ECC ; 
 int /*<<< orphan*/  e_FM_EX_DMA_READ_ECC ; 
 int /*<<< orphan*/  e_FM_EX_DMA_SINGLE_PORT_ECC ; 
 int /*<<< orphan*/  e_FM_EX_DMA_SYSTEM_WRITE_ECC ; 
 scalar_t__ e_FM_PORT_TYPE_DUMMY ; 
 int /*<<< orphan*/  FUNC3 (struct fman_dma_regs*) ; 
 int FUNC4 (struct fman_dma_regs*) ; 
 int FUNC5 (struct fman_dma_regs*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,size_t,int /*<<< orphan*/ ,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void    FUNC11(t_Fm *p_Fm)
{
    uint32_t            status, com_id;
    uint8_t             tnum;
    uint8_t             hardwarePortId;
    uint8_t             relativePortId;
    uint16_t            liodn;
    struct fman_dma_regs *dma_rg = p_Fm->p_FmDmaRegs;

    status = FUNC5(dma_rg);

    if (status & DMA_STATUS_BUS_ERR)
    {
        com_id = FUNC4(dma_rg);
        hardwarePortId = (uint8_t)(((com_id & DMA_TRANSFER_PORTID_MASK) >> DMA_TRANSFER_PORTID_SHIFT));
        FUNC0(FUNC2(1, hardwarePortId, 63));
        FUNC1(relativePortId, hardwarePortId);
        tnum = (uint8_t)((com_id & DMA_TRANSFER_TNUM_MASK) >> DMA_TRANSFER_TNUM_SHIFT);
        liodn = (uint16_t)(com_id & DMA_TRANSFER_LIODN_MASK);
        FUNC0(p_Fm->p_FmStateStruct->portsTypes[hardwarePortId] != e_FM_PORT_TYPE_DUMMY);
        p_Fm->f_BusError(p_Fm->h_App,
                         p_Fm->p_FmStateStruct->portsTypes[hardwarePortId],
                         relativePortId,
                         FUNC3(dma_rg),
                         tnum,
                         liodn);
    }
        if (status & DMA_STATUS_FM_SPDAT_ECC)
            p_Fm->f_Exception(p_Fm->h_App, e_FM_EX_DMA_SINGLE_PORT_ECC);
        if (status & DMA_STATUS_READ_ECC)
            p_Fm->f_Exception(p_Fm->h_App, e_FM_EX_DMA_READ_ECC);
        if (status & DMA_STATUS_SYSTEM_WRITE_ECC)
            p_Fm->f_Exception(p_Fm->h_App, e_FM_EX_DMA_SYSTEM_WRITE_ECC);
        if (status & DMA_STATUS_FM_WRITE_ECC)
            p_Fm->f_Exception(p_Fm->h_App, e_FM_EX_DMA_FM_WRITE_ECC);
    }