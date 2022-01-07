
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_port_params {int dummy; } ;
struct fman_port_cfg {int dummy; } ;
struct fman_port {int type; int im_en; } ;


 int EINVAL ;






 int init_bmi_oh (struct fman_port*,struct fman_port_cfg*,struct fman_port_params*) ;
 int init_bmi_rx (struct fman_port*,struct fman_port_cfg*,struct fman_port_params*) ;
 int init_bmi_tx (struct fman_port*,struct fman_port_cfg*,struct fman_port_params*) ;
 int init_qmi (struct fman_port*,struct fman_port_cfg*,struct fman_port_params*) ;

int fman_port_init(struct fman_port *port,
        struct fman_port_cfg *cfg,
        struct fman_port_params *params)
{
    int err;


    switch (port->type) {
    case 131:
    case 130:
        err = init_bmi_rx(port, cfg, params);
        break;
    case 129:
    case 128:
        err = init_bmi_tx(port, cfg, params);
        break;
    case 132:
    case 133:
        err = init_bmi_oh(port, cfg, params);
        break;
    default:
        return -EINVAL;
    }

    if (err)
        return err;


    if (!port->im_en)
    {
        err = init_qmi(port, cfg, params);
        return err;
    }
    return 0;
}
