
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct fman_port_tx_bmi_regs {int fmbm_tpc; int fmbm_tstc; int fmbm_tefqid; int fmbm_tcfqid; int fmbm_tfne; int fmbm_tfene; int fmbm_tfdne; int fmbm_tfca; int fmbm_ticp; int fmbm_tfed; int fmbm_tfp; int fmbm_tda; int fmbm_tcfg; } ;
struct fman_port_params {int dflt_fqid; int err_fqid; scalar_t__ dont_release_buf; } ;
struct fman_port_cfg {int tx_fifo_min_level; int tx_fifo_low_comf_level; int ic_size; scalar_t__ perf_counters_enable; int perf_cnt_params; scalar_t__ stats_counters_enable; scalar_t__ fmbm_tfne_has_features; scalar_t__ color; scalar_t__ ic_int_offset; scalar_t__ ic_ext_offset; scalar_t__ checksum_bytes_ignore; scalar_t__ tx_fifo_deq_pipeline_depth; scalar_t__ dma_sg_stash_on; scalar_t__ dma_header_stash_on; scalar_t__ dma_ic_stash_on; scalar_t__ dma_swap_data; } ;
struct fman_port {scalar_t__ im_en; TYPE_1__* bmi_regs; } ;
struct TYPE_2__ {struct fman_port_tx_bmi_regs tx; } ;


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
 int fman_port_set_perf_cnt_params (struct fman_port*,int *) ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

__attribute__((used)) static int init_bmi_tx(struct fman_port *port,
        struct fman_port_cfg *cfg,
        struct fman_port_params *params)
{
    struct fman_port_tx_bmi_regs *regs = &port->bmi_regs->tx;
    uint32_t tmp;


    tmp = 0;
    if (port->im_en)
        tmp |= BMI_PORT_CFG_IM;
    iowrite32be(tmp, &regs->fmbm_tcfg);


    tmp = (uint32_t)cfg->dma_swap_data << BMI_DMA_ATTR_SWP_SHIFT;
    if (cfg->dma_ic_stash_on)
        tmp |= BMI_DMA_ATTR_IC_STASH_ON;
    if (cfg->dma_header_stash_on)
        tmp |= BMI_DMA_ATTR_HDR_STASH_ON;
    if (cfg->dma_sg_stash_on)
        tmp |= BMI_DMA_ATTR_SG_STASH_ON;
    iowrite32be(tmp, &regs->fmbm_tda);


    tmp = (cfg->tx_fifo_min_level / FMAN_PORT_BMI_FIFO_UNITS) <<
            BMI_TX_FIFO_MIN_FILL_SHIFT;
    tmp |= ((uint32_t)cfg->tx_fifo_deq_pipeline_depth - 1) <<
            BMI_FIFO_PIPELINE_DEPTH_SHIFT;
    tmp |= (uint32_t)(cfg->tx_fifo_low_comf_level /
            FMAN_PORT_BMI_FIFO_UNITS - 1);
    iowrite32be(tmp, &regs->fmbm_tfp);


    tmp = (uint32_t)cfg->checksum_bytes_ignore <<
            BMI_FRAME_END_CS_IGNORE_SHIFT;
    iowrite32be(tmp, &regs->fmbm_tfed);


    if (!port->im_en)
    {
        tmp = ((uint32_t)cfg->ic_ext_offset / FMAN_PORT_IC_OFFSET_UNITS) <<
                BMI_IC_TO_EXT_SHIFT;
        tmp |= ((uint32_t)cfg->ic_int_offset / FMAN_PORT_IC_OFFSET_UNITS) <<
                BMI_IC_FROM_INT_SHIFT;
        tmp |= cfg->ic_size / FMAN_PORT_IC_OFFSET_UNITS;
        iowrite32be(tmp, &regs->fmbm_ticp);
    }

    tmp = BMI_CMD_TX_MR_DEF;
    if (port->im_en)
        tmp |= BMI_CMD_MR_DEAS;
    else
    {
        tmp |= BMI_CMD_ATTR_ORDER;
        tmp |= (uint32_t)cfg->color << BMI_CMD_ATTR_COLOR_SHIFT;
    }
    iowrite32be(tmp, &regs->fmbm_tfca);


    if (port->im_en)
    {
        iowrite32be(NIA_ENG_FM_CTL | NIA_FM_CTL_AC_IND_MODE_TX, &regs->fmbm_tfdne);
        iowrite32be(NIA_ENG_FM_CTL | NIA_FM_CTL_AC_IND_MODE_TX, &regs->fmbm_tfene);
    }
    else
    {
        iowrite32be(NIA_ENG_QMI_DEQ, &regs->fmbm_tfdne);
        iowrite32be(NIA_ENG_QMI_ENQ | NIA_ORDER_RESTOR, &regs->fmbm_tfene);
        if (cfg->fmbm_tfne_has_features)
            iowrite32be(!params->dflt_fqid ?
                BMI_EBD_EN | NIA_BMI_AC_FETCH_ALL_FRAME :
                NIA_BMI_AC_FETCH_ALL_FRAME, &regs->fmbm_tfne);
        if (!params->dflt_fqid && params->dont_release_buf)
        {
            iowrite32be(0x00FFFFFF, &regs->fmbm_tcfqid);
            iowrite32be(NIA_ENG_BMI | NIA_BMI_AC_TX_RELEASE, &regs->fmbm_tfene);
            if (cfg->fmbm_tfne_has_features)
                iowrite32be(ioread32be(&regs->fmbm_tfne) & ~BMI_EBD_EN, &regs->fmbm_tfne);
        }
    }


    if (!port->im_en)
    {
        if (params->dflt_fqid || !params->dont_release_buf)
            iowrite32be(params->dflt_fqid & 0x00FFFFFF, &regs->fmbm_tcfqid);
        iowrite32be((params->err_fqid & 0x00FFFFFF), &regs->fmbm_tefqid);
    }

    tmp = 0;
    if (cfg->stats_counters_enable)
        tmp = BMI_COUNTERS_EN;
    iowrite32be(tmp, &regs->fmbm_tstc);


    fman_port_set_perf_cnt_params(port, &cfg->perf_cnt_params);
    tmp = 0;
    if (cfg->perf_counters_enable)
        tmp = BMI_COUNTERS_EN;
    iowrite32be(tmp, &regs->fmbm_tpc);

    return 0;
}
