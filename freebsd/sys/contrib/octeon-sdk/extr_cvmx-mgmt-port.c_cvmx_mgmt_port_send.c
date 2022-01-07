
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int odbell; } ;
struct TYPE_10__ {int u64; TYPE_1__ s; } ;
typedef TYPE_4__ cvmx_mixx_oring2_t ;
struct TYPE_11__ {size_t tx_write_index; int lock; TYPE_3__* tx_ring; int mac; scalar_t__* tx_buffers; } ;
typedef TYPE_5__ cvmx_mgmt_port_state_t ;
typedef int cvmx_mgmt_port_result_t ;
struct TYPE_8__ {int len; scalar_t__ tstamp; } ;
struct TYPE_9__ {TYPE_2__ s; } ;


 int CVMX_MGMT_PORT_INVALID_PARAM ;
 int CVMX_MGMT_PORT_NO_MEMORY ;
 int CVMX_MGMT_PORT_NUM_TX_BUFFERS ;
 int CVMX_MGMT_PORT_SUCCESS ;
 int CVMX_MGMT_PORT_TX_BUFFER_SIZE ;
 int CVMX_MIXX_ORCNT (int) ;
 int CVMX_MIXX_ORING2 (int) ;
 int CVMX_SYNCWS ;
 int __cvmx_mgmt_port_num_ports () ;
 TYPE_5__* cvmx_mgmt_port_state_ptr ;
 int cvmx_read_csr (int ) ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;
 int cvmx_write_csr (int ,int) ;
 int memcpy (scalar_t__,char*,int) ;

cvmx_mgmt_port_result_t cvmx_mgmt_port_send(int port, int packet_len, void *buffer)
{
    cvmx_mgmt_port_state_t *state;
    cvmx_mixx_oring2_t mix_oring2;

    if ((port < 0) || (port >= __cvmx_mgmt_port_num_ports()))
        return CVMX_MGMT_PORT_INVALID_PARAM;


    if ((packet_len < 1) || (packet_len > CVMX_MGMT_PORT_TX_BUFFER_SIZE))
        return CVMX_MGMT_PORT_INVALID_PARAM;

    if (buffer == ((void*)0))
        return CVMX_MGMT_PORT_INVALID_PARAM;

    state = cvmx_mgmt_port_state_ptr + port;

    cvmx_spinlock_lock(&state->lock);

    mix_oring2.u64 = cvmx_read_csr(CVMX_MIXX_ORING2(port));
    if (mix_oring2.s.odbell >= CVMX_MGMT_PORT_NUM_TX_BUFFERS - 1)
    {

        cvmx_spinlock_unlock(&state->lock);
        return CVMX_MGMT_PORT_NO_MEMORY;
    }
    else
    {

        memcpy(state->tx_buffers[state->tx_write_index], buffer, packet_len);

        memcpy(state->tx_buffers[state->tx_write_index] + 6, ((char*)&state->mac) + 2, 6);

        state->tx_ring[state->tx_write_index].s.len = packet_len;

        state->tx_ring[state->tx_write_index].s.tstamp = 0;

        state->tx_write_index = (state->tx_write_index + 1) % CVMX_MGMT_PORT_NUM_TX_BUFFERS;

        CVMX_SYNCWS;
        cvmx_write_csr(CVMX_MIXX_ORING2(port), 1);
        if (cvmx_read_csr(CVMX_MIXX_ORCNT(port)))
            cvmx_write_csr(CVMX_MIXX_ORCNT(port), cvmx_read_csr(CVMX_MIXX_ORCNT(port)));

        cvmx_spinlock_unlock(&state->lock);
        return CVMX_MGMT_PORT_SUCCESS;
    }
}
