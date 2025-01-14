
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_5__ {int h_App; int (* f_Exception ) (int ,int ) ;TYPE_1__* p_FmStateStruct; int (* f_BusError ) (int ,scalar_t__,size_t,int ,size_t,scalar_t__) ;struct fman_dma_regs* p_FmDmaRegs; } ;
typedef TYPE_2__ t_Fm ;
struct fman_dma_regs {int dummy; } ;
struct TYPE_4__ {scalar_t__* portsTypes; } ;


 int ASSERT_COND (int) ;
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
 int HW_PORT_ID_TO_SW_PORT_ID (size_t,size_t) ;
 int IN_RANGE (int,size_t,int) ;
 int e_FM_EX_DMA_FM_WRITE_ECC ;
 int e_FM_EX_DMA_READ_ECC ;
 int e_FM_EX_DMA_SINGLE_PORT_ECC ;
 int e_FM_EX_DMA_SYSTEM_WRITE_ECC ;
 scalar_t__ e_FM_PORT_TYPE_DUMMY ;
 int fman_get_dma_addr (struct fman_dma_regs*) ;
 int fman_get_dma_com_id (struct fman_dma_regs*) ;
 int fman_get_dma_err_event (struct fman_dma_regs*) ;
 int stub1 (int ,scalar_t__,size_t,int ,size_t,scalar_t__) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ) ;
 int stub5 (int ,int ) ;

__attribute__((used)) static void DmaErrEvent(t_Fm *p_Fm)
{
    uint32_t status, com_id;
    uint8_t tnum;
    uint8_t hardwarePortId;
    uint8_t relativePortId;
    uint16_t liodn;
    struct fman_dma_regs *dma_rg = p_Fm->p_FmDmaRegs;

    status = fman_get_dma_err_event(dma_rg);

    if (status & DMA_STATUS_BUS_ERR)
    {
        com_id = fman_get_dma_com_id(dma_rg);
        hardwarePortId = (uint8_t)(((com_id & DMA_TRANSFER_PORTID_MASK) >> DMA_TRANSFER_PORTID_SHIFT));
        ASSERT_COND(IN_RANGE(1, hardwarePortId, 63));
        HW_PORT_ID_TO_SW_PORT_ID(relativePortId, hardwarePortId);
        tnum = (uint8_t)((com_id & DMA_TRANSFER_TNUM_MASK) >> DMA_TRANSFER_TNUM_SHIFT);
        liodn = (uint16_t)(com_id & DMA_TRANSFER_LIODN_MASK);
        ASSERT_COND(p_Fm->p_FmStateStruct->portsTypes[hardwarePortId] != e_FM_PORT_TYPE_DUMMY);
        p_Fm->f_BusError(p_Fm->h_App,
                         p_Fm->p_FmStateStruct->portsTypes[hardwarePortId],
                         relativePortId,
                         fman_get_dma_addr(dma_rg),
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
