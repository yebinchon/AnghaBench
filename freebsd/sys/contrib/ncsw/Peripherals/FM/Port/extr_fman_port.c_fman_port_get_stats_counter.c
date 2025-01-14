
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_port {int type; } ;
typedef enum fman_port_stats_counters { ____Placeholder_fman_port_stats_counters } fman_port_stats_counters ;
 int get_oh_stats_reg (struct fman_port*,int,int **) ;
 int get_rx_stats_reg (struct fman_port*,int,int **) ;
 int get_tx_stats_reg (struct fman_port*,int,int **) ;
 int ioread32be (int *) ;

uint32_t fman_port_get_stats_counter(struct fman_port *port,
        enum fman_port_stats_counters counter)
{
    uint32_t *stats_reg, ret_val;

    switch (port->type) {
    case 131:
    case 130:
        get_rx_stats_reg(port, counter, &stats_reg);
        break;
    case 129:
    case 128:
        get_tx_stats_reg(port, counter, &stats_reg);
        break;
    case 132:
    case 133:
        get_oh_stats_reg(port, counter, &stats_reg);
        break;
    default:
        stats_reg = ((void*)0);
    }

    if (stats_reg == ((void*)0))
        return 0;

    ret_val = ioread32be(stats_reg);
    return ret_val;
}
