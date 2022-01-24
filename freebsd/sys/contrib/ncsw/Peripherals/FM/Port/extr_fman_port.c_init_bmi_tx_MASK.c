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
struct fman_port_tx_bmi_regs {int /*<<< orphan*/  fmbm_tpc; int /*<<< orphan*/  fmbm_tstc; int /*<<< orphan*/  fmbm_tefqid; int /*<<< orphan*/  fmbm_tcfqid; int /*<<< orphan*/  fmbm_tfne; int /*<<< orphan*/  fmbm_tfene; int /*<<< orphan*/  fmbm_tfdne; int /*<<< orphan*/  fmbm_tfca; int /*<<< orphan*/  fmbm_ticp; int /*<<< orphan*/  fmbm_tfed; int /*<<< orphan*/  fmbm_tfp; int /*<<< orphan*/  fmbm_tda; int /*<<< orphan*/  fmbm_tcfg; } ;
struct fman_port_params {int dflt_fqid; int err_fqid; scalar_t__ dont_release_buf; } ;
struct fman_port_cfg {int tx_fifo_min_level; int tx_fifo_low_comf_level; int ic_size; scalar_t__ perf_counters_enable; int /*<<< orphan*/  perf_cnt_params; scalar_t__ stats_counters_enable; scalar_t__ fmbm_tfne_has_features; scalar_t__ color; scalar_t__ ic_int_offset; scalar_t__ ic_ext_offset; scalar_t__ checksum_bytes_ignore; scalar_t__ tx_fifo_deq_pipeline_depth; scalar_t__ dma_sg_stash_on; scalar_t__ dma_header_stash_on; scalar_t__ dma_ic_stash_on; scalar_t__ dma_swap_data; } ;
struct fman_port {scalar_t__ im_en; TYPE_1__* bmi_regs; } ;
struct TYPE_2__ {struct fman_port_tx_bmi_regs tx; } ;

/* Variables and functions */
 int BMI_CMD_ATTR_COLOR_SHIFT ; 
 int BMI_CMD_ATTR_ORDER ; 
 int BMI_CMD_MR_DEAS ; 
 int BMI_CMD_TX_MR_DEF ; 
 int BMI_COUNTERS_EN ; 
 int BMI_DMA_ATTR_HDR_STASH_ON ; 
 int BMI_DMA_ATTR_IC_STASH_ON ; 
 int BMI_DMA_ATTR_SG_STASH_ON ; 
 int BMI_DMA_ATTR_SWP_SHIFT ; 
 int BMI_EBD_EN ; 
 int BMI_FIFO_PIPELINE_DEPTH_SHIFT ; 
 int BMI_FRAME_END_CS_IGNORE_SHIFT ; 
 int BMI_IC_FROM_INT_SHIFT ; 
 int BMI_IC_TO_EXT_SHIFT ; 
 int BMI_PORT_CFG_IM ; 
 int BMI_TX_FIFO_MIN_FILL_SHIFT ; 
 int FMAN_PORT_BMI_FIFO_UNITS ; 
 int FMAN_PORT_IC_OFFSET_UNITS ; 
 int NIA_BMI_AC_FETCH_ALL_FRAME ; 
 int NIA_BMI_AC_TX_RELEASE ; 
 int NIA_ENG_BMI ; 
 int NIA_ENG_FM_CTL ; 
 int NIA_ENG_QMI_DEQ ; 
 int NIA_ENG_QMI_ENQ ; 
 int NIA_FM_CTL_AC_IND_MODE_TX ; 
 int NIA_ORDER_RESTOR ; 
 int /*<<< orphan*/  FUNC0 (struct fman_port*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct fman_port *port,
        struct fman_port_cfg *cfg,
        struct fman_port_params *params)
{
    struct fman_port_tx_bmi_regs *regs = &port->bmi_regs->tx;
    uint32_t tmp;

    /* Tx Configuration register */
    tmp = 0;
    if (port->im_en)
        tmp |= BMI_PORT_CFG_IM;
    FUNC2(tmp, &regs->fmbm_tcfg);

    /* DMA attributes */
    tmp = (uint32_t)cfg->dma_swap_data << BMI_DMA_ATTR_SWP_SHIFT;
    if (cfg->dma_ic_stash_on)
        tmp |= BMI_DMA_ATTR_IC_STASH_ON;
    if (cfg->dma_header_stash_on)
        tmp |= BMI_DMA_ATTR_HDR_STASH_ON;
    if (cfg->dma_sg_stash_on)
        tmp |= BMI_DMA_ATTR_SG_STASH_ON;
    FUNC2(tmp, &regs->fmbm_tda);

    /* Tx FIFO parameters */
    tmp = (cfg->tx_fifo_min_level / FMAN_PORT_BMI_FIFO_UNITS) <<
            BMI_TX_FIFO_MIN_FILL_SHIFT;
    tmp |= ((uint32_t)cfg->tx_fifo_deq_pipeline_depth - 1) <<
            BMI_FIFO_PIPELINE_DEPTH_SHIFT;
    tmp |= (uint32_t)(cfg->tx_fifo_low_comf_level /
            FMAN_PORT_BMI_FIFO_UNITS - 1);
    FUNC2(tmp, &regs->fmbm_tfp);

    /* Frame end data */
    tmp = (uint32_t)cfg->checksum_bytes_ignore <<
            BMI_FRAME_END_CS_IGNORE_SHIFT;
    FUNC2(tmp, &regs->fmbm_tfed);

    /* Internal context parameters */
    if (!port->im_en)
    {
        tmp = ((uint32_t)cfg->ic_ext_offset / FMAN_PORT_IC_OFFSET_UNITS) <<
                BMI_IC_TO_EXT_SHIFT;
        tmp |= ((uint32_t)cfg->ic_int_offset / FMAN_PORT_IC_OFFSET_UNITS) <<
                BMI_IC_FROM_INT_SHIFT;
        tmp |= cfg->ic_size / FMAN_PORT_IC_OFFSET_UNITS;
        FUNC2(tmp, &regs->fmbm_ticp);
    }
    /* Frame attributes */
    tmp = BMI_CMD_TX_MR_DEF;
    if (port->im_en)
        tmp |= BMI_CMD_MR_DEAS;
    else
    {
        tmp |= BMI_CMD_ATTR_ORDER;
        tmp |= (uint32_t)cfg->color << BMI_CMD_ATTR_COLOR_SHIFT;
    }
    FUNC2(tmp, &regs->fmbm_tfca);

    /* Dequeue NIA + enqueue NIA */
    if (port->im_en)
    {
        FUNC2(NIA_ENG_FM_CTL | NIA_FM_CTL_AC_IND_MODE_TX, &regs->fmbm_tfdne);
        FUNC2(NIA_ENG_FM_CTL | NIA_FM_CTL_AC_IND_MODE_TX, &regs->fmbm_tfene);
    }
    else
    {
        FUNC2(NIA_ENG_QMI_DEQ, &regs->fmbm_tfdne);
        FUNC2(NIA_ENG_QMI_ENQ | NIA_ORDER_RESTOR, &regs->fmbm_tfene);
        if (cfg->fmbm_tfne_has_features)
            FUNC2(!params->dflt_fqid ?
                BMI_EBD_EN | NIA_BMI_AC_FETCH_ALL_FRAME :
                NIA_BMI_AC_FETCH_ALL_FRAME, &regs->fmbm_tfne);
        if (!params->dflt_fqid && params->dont_release_buf)
        {
            FUNC2(0x00FFFFFF, &regs->fmbm_tcfqid);
            FUNC2(NIA_ENG_BMI | NIA_BMI_AC_TX_RELEASE, &regs->fmbm_tfene);
            if (cfg->fmbm_tfne_has_features)
                FUNC2(FUNC1(&regs->fmbm_tfne) & ~BMI_EBD_EN, &regs->fmbm_tfne);
        }
    }

    /* Confirmation/error queues */
    if (!port->im_en)
    {
        if (params->dflt_fqid || !params->dont_release_buf)
            FUNC2(params->dflt_fqid & 0x00FFFFFF, &regs->fmbm_tcfqid);
        FUNC2((params->err_fqid & 0x00FFFFFF), &regs->fmbm_tefqid);
    }
    /* Statistics counters */
    tmp = 0;
    if (cfg->stats_counters_enable)
        tmp = BMI_COUNTERS_EN;
    FUNC2(tmp, &regs->fmbm_tstc);

    /* Performance counters */
    FUNC0(port, &cfg->perf_cnt_params);
    tmp = 0;
    if (cfg->perf_counters_enable)
        tmp = BMI_COUNTERS_EN;
    FUNC2(tmp, &regs->fmbm_tpc);

    return 0;
}