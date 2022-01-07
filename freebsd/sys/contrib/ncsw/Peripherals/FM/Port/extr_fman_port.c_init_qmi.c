
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_port_qmi_regs {int fmqm_pndc; int fmqm_pndn; int fmqm_pnen; int fmqm_pnc; } ;
struct fman_port_params {int deq_sp; } ;
struct fman_port_cfg {int deq_type; int deq_prefetch_opt; int deq_byte_cnt; scalar_t__ qmi_deq_options_support; scalar_t__ deq_high_pri; scalar_t__ queue_counters_enable; } ;
struct fman_port {scalar_t__ type; struct fman_port_qmi_regs* qmi_regs; } ;


 int EINVAL ;






 scalar_t__ E_FMAN_PORT_TYPE_HC ;
 scalar_t__ E_FMAN_PORT_TYPE_RX ;
 scalar_t__ E_FMAN_PORT_TYPE_RX_10G ;
 scalar_t__ E_FMAN_PORT_TYPE_TX ;
 scalar_t__ E_FMAN_PORT_TYPE_TX_10G ;
 int NIA_BMI_AC_FETCH ;
 int NIA_BMI_AC_RELEASE ;
 int NIA_BMI_AC_TX ;
 int NIA_BMI_AC_TX_RELEASE ;
 int NIA_ENG_BMI ;
 int QMI_DEQ_CFG_PREFETCH_FULL ;
 int QMI_DEQ_CFG_PREFETCH_PARTIAL ;
 int QMI_DEQ_CFG_PRI ;
 int QMI_DEQ_CFG_SP_MASK ;
 int QMI_DEQ_CFG_SP_SHIFT ;
 int QMI_DEQ_CFG_TYPE1 ;
 int QMI_DEQ_CFG_TYPE2 ;
 int QMI_DEQ_CFG_TYPE3 ;
 int QMI_PORT_CFG_EN_COUNTERS ;
 int iowrite32be (int,int *) ;

__attribute__((used)) static int init_qmi(struct fman_port *port,
        struct fman_port_cfg *cfg,
        struct fman_port_params *params)
{
    struct fman_port_qmi_regs *regs = port->qmi_regs;
    uint32_t tmp;

    tmp = 0;
    if (cfg->queue_counters_enable)
        tmp |= QMI_PORT_CFG_EN_COUNTERS;
    iowrite32be(tmp, &regs->fmqm_pnc);


    if ((port->type == E_FMAN_PORT_TYPE_RX) ||
            (port->type == E_FMAN_PORT_TYPE_RX_10G)) {

        iowrite32be(NIA_ENG_BMI | NIA_BMI_AC_RELEASE, &regs->fmqm_pnen);
        return 0;
    }


    if ((port->type == E_FMAN_PORT_TYPE_TX) ||
            (port->type == E_FMAN_PORT_TYPE_TX_10G)) {

        iowrite32be(NIA_ENG_BMI | NIA_BMI_AC_TX_RELEASE,
                &regs->fmqm_pnen);

        iowrite32be(NIA_ENG_BMI | NIA_BMI_AC_TX, &regs->fmqm_pndn);
    } else {

        iowrite32be(NIA_ENG_BMI | NIA_BMI_AC_RELEASE, &regs->fmqm_pnen);

        iowrite32be(NIA_ENG_BMI | NIA_BMI_AC_FETCH, &regs->fmqm_pndn);
    }


    tmp = 0;
    if (cfg->deq_high_pri)
        tmp |= QMI_DEQ_CFG_PRI;

    switch (cfg->deq_type) {
    case 131:
        tmp |= QMI_DEQ_CFG_TYPE1;
        break;
    case 133:
        tmp |= QMI_DEQ_CFG_TYPE2;
        break;
    case 132:
        tmp |= QMI_DEQ_CFG_TYPE3;
        break;
    default:
        return -EINVAL;
    }

    if (cfg->qmi_deq_options_support) {
        if ((port->type == E_FMAN_PORT_TYPE_HC) &&
            (cfg->deq_prefetch_opt != 129))
            return -EINVAL;

        switch (cfg->deq_prefetch_opt) {
        case 129:
            break;
        case 128:
            tmp |= QMI_DEQ_CFG_PREFETCH_PARTIAL;
            break;
        case 130:
            tmp |= QMI_DEQ_CFG_PREFETCH_FULL;
            break;
        default:
            return -EINVAL;
        }
    }
    tmp |= (uint32_t)(params->deq_sp & QMI_DEQ_CFG_SP_MASK) <<
            QMI_DEQ_CFG_SP_SHIFT;
    tmp |= cfg->deq_byte_cnt;
    iowrite32be(tmp, &regs->fmqm_pndc);

    return 0;
}
