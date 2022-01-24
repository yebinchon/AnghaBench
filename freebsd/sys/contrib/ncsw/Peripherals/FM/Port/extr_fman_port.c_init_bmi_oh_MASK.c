#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct fman_port_params {int dflt_fqid; int err_fqid; int discard_mask; int err_mask; } ;
struct fman_port_oh_bmi_regs {int /*<<< orphan*/  fmbm_opc; int /*<<< orphan*/  fmbm_ostc; int /*<<< orphan*/  fmbm_ofsem; int /*<<< orphan*/  fmbm_ofsdm; int /*<<< orphan*/  fmbm_oefqid; int /*<<< orphan*/  fmbm_ofqid; int /*<<< orphan*/  fmbm_ofene; int /*<<< orphan*/  fmbm_ofne; int /*<<< orphan*/  fmbm_ofdne; int /*<<< orphan*/  fmbm_oim; int /*<<< orphan*/  fmbm_ofca; int /*<<< orphan*/  fmbm_oicp; int /*<<< orphan*/  fmbm_ofp; int /*<<< orphan*/  fmbm_oda; int /*<<< orphan*/  fmbm_ocfg; } ;
struct fman_port_cfg {int ic_size; scalar_t__ perf_counters_enable; int /*<<< orphan*/  perf_cnt_params; scalar_t__ stats_counters_enable; scalar_t__ int_buf_start_margin; scalar_t__ sync_req; scalar_t__ color; scalar_t__ ic_int_offset; scalar_t__ ic_ext_offset; scalar_t__ tx_fifo_deq_pipeline_depth; scalar_t__ dma_write_optimize; scalar_t__ dma_sg_stash_on; scalar_t__ dma_header_stash_on; scalar_t__ dma_ic_stash_on; scalar_t__ dma_swap_data; scalar_t__ discard_override; } ;
struct fman_port {scalar_t__ type; TYPE_1__* bmi_regs; } ;
struct TYPE_2__ {struct fman_port_oh_bmi_regs oh; } ;

/* Variables and functions */
 int BMI_CMD_ATTR_COLOR_SHIFT ; 
 int BMI_CMD_ATTR_ORDER ; 
 int BMI_CMD_ATTR_SYNC ; 
 int BMI_CMD_OP_MR_DEF ; 
 int BMI_COUNTERS_EN ; 
 int BMI_DMA_ATTR_HDR_STASH_ON ; 
 int BMI_DMA_ATTR_IC_STASH_ON ; 
 int BMI_DMA_ATTR_SG_STASH_ON ; 
 int BMI_DMA_ATTR_SWP_SHIFT ; 
 int BMI_DMA_ATTR_WRITE_OPTIMIZE ; 
 int BMI_FIFO_PIPELINE_DEPTH_SHIFT ; 
 int BMI_IC_FROM_INT_SHIFT ; 
 int BMI_IC_TO_EXT_SHIFT ; 
 int BMI_INT_BUF_MARG_SHIFT ; 
 int BMI_PORT_CFG_FDOVR ; 
 scalar_t__ E_FMAN_PORT_TYPE_HC ; 
 scalar_t__ E_FMAN_PORT_TYPE_OP ; 
 int FMAN_PORT_IC_OFFSET_UNITS ; 
 int NIA_ENG_FM_CTL ; 
 int NIA_ENG_QMI_DEQ ; 
 int NIA_ENG_QMI_ENQ ; 
 int NIA_FM_CTL_AC_HC ; 
 int NIA_ORDER_RESTOR ; 
 int /*<<< orphan*/  FUNC0 (struct fman_port*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct fman_port_cfg*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct fman_port *port,
        struct fman_port_cfg *cfg,
        struct fman_port_params *params)
{
    struct fman_port_oh_bmi_regs *regs = &port->bmi_regs->oh;
    uint32_t tmp;

    /* OP Configuration register */
    tmp = 0;
    if (cfg->discard_override)
        tmp |= BMI_PORT_CFG_FDOVR;
    FUNC2(tmp, &regs->fmbm_ocfg);

    /* DMA attributes */
    tmp = (uint32_t)cfg->dma_swap_data << BMI_DMA_ATTR_SWP_SHIFT;
    if (cfg->dma_ic_stash_on)
        tmp |= BMI_DMA_ATTR_IC_STASH_ON;
    if (cfg->dma_header_stash_on)
        tmp |= BMI_DMA_ATTR_HDR_STASH_ON;
    if (cfg->dma_sg_stash_on)
        tmp |= BMI_DMA_ATTR_SG_STASH_ON;
    if (cfg->dma_write_optimize)
        tmp |= BMI_DMA_ATTR_WRITE_OPTIMIZE;
    FUNC2(tmp, &regs->fmbm_oda);

    /* Tx FIFO parameters */
    tmp = ((uint32_t)cfg->tx_fifo_deq_pipeline_depth - 1) <<
            BMI_FIFO_PIPELINE_DEPTH_SHIFT;
    FUNC2(tmp, &regs->fmbm_ofp);

    /* Internal context parameters */
    tmp = ((uint32_t)cfg->ic_ext_offset / FMAN_PORT_IC_OFFSET_UNITS) <<
            BMI_IC_TO_EXT_SHIFT;
    tmp |= ((uint32_t)cfg->ic_int_offset / FMAN_PORT_IC_OFFSET_UNITS) <<
            BMI_IC_FROM_INT_SHIFT;
    tmp |= cfg->ic_size / FMAN_PORT_IC_OFFSET_UNITS;
    FUNC2(tmp, &regs->fmbm_oicp);

    /* Frame attributes */
    tmp = BMI_CMD_OP_MR_DEF;
    tmp |= (uint32_t)cfg->color << BMI_CMD_ATTR_COLOR_SHIFT;
    if (cfg->sync_req)
        tmp |= BMI_CMD_ATTR_SYNC;
    if (port->type == E_FMAN_PORT_TYPE_OP)
        tmp |= BMI_CMD_ATTR_ORDER;
    FUNC2(tmp, &regs->fmbm_ofca);

    /* Internal buffer offset */
    tmp = ((uint32_t)cfg->int_buf_start_margin / FMAN_PORT_IC_OFFSET_UNITS)
            << BMI_INT_BUF_MARG_SHIFT;
    FUNC2(tmp, &regs->fmbm_oim);

    /* Dequeue NIA */
    FUNC2(NIA_ENG_QMI_DEQ, &regs->fmbm_ofdne);

    /* NIA and Enqueue NIA */
    if (port->type == E_FMAN_PORT_TYPE_HC) {
        FUNC2(NIA_ENG_FM_CTL | NIA_FM_CTL_AC_HC,
                &regs->fmbm_ofne);
        FUNC2(NIA_ENG_QMI_ENQ, &regs->fmbm_ofene);
    } else {
        FUNC2(FUNC1(cfg),
                &regs->fmbm_ofne);
        FUNC2(NIA_ENG_QMI_ENQ | NIA_ORDER_RESTOR,
                &regs->fmbm_ofene);
    }

    /* Default/error queues */
    FUNC2((params->dflt_fqid & 0x00FFFFFF), &regs->fmbm_ofqid);
    FUNC2((params->err_fqid & 0x00FFFFFF), &regs->fmbm_oefqid);

    /* Discard/error masks */
    if (port->type == E_FMAN_PORT_TYPE_OP) {
        FUNC2(params->discard_mask, &regs->fmbm_ofsdm);
        FUNC2(params->err_mask, &regs->fmbm_ofsem);
    }

    /* Statistics counters */
    tmp = 0;
    if (cfg->stats_counters_enable)
        tmp = BMI_COUNTERS_EN;
    FUNC2(tmp, &regs->fmbm_ostc);

    /* Performance counters */
    FUNC0(port, &cfg->perf_cnt_params);
    tmp = 0;
    if (cfg->perf_counters_enable)
        tmp = BMI_COUNTERS_EN;
    FUNC2(tmp, &regs->fmbm_opc);

    return 0;
}