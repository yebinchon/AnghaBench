
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_port {int dummy; } ;
typedef enum fman_port_qmi_counters { ____Placeholder_fman_port_qmi_counters } fman_port_qmi_counters ;


 int get_qmi_counter_reg (struct fman_port*,int,int **) ;
 int ioread32be (int *) ;

uint32_t fman_port_get_qmi_counter(struct fman_port *port,
        enum fman_port_qmi_counters counter)
{
    uint32_t *queue_reg, ret_val;

    get_qmi_counter_reg(port, counter, &queue_reg);

    if (queue_reg == ((void*)0))
        return 0;

    ret_val = ioread32be(queue_reg);
    return ret_val;
}
