
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_7__ {scalar_t__ ircnt; } ;
struct TYPE_10__ {TYPE_1__ s; int u64; } ;
typedef TYPE_4__ cvmx_mixx_ircnt_t ;
struct TYPE_11__ {size_t rx_read_index; int lock; TYPE_3__* rx_ring; scalar_t__* rx_buffers; } ;
typedef TYPE_5__ cvmx_mgmt_port_state_t ;
struct TYPE_8__ {int code; int len; } ;
struct TYPE_9__ {TYPE_2__ s; } ;


 int CVMX_MGMT_PORT_INVALID_PARAM ;
 int CVMX_MGMT_PORT_NO_MEMORY ;
 int CVMX_MGMT_PORT_NUM_RX_BUFFERS ;
 int CVMX_MGMT_PORT_RX_BUFFER_SIZE ;
 int CVMX_MIXX_IRCNT (int) ;
 int CVMX_MIXX_IRING2 (int) ;
 int CVMX_SYNCWS ;
 int OCTEON_CN56XX_PASS1_X ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int __cvmx_mgmt_port_num_ports () ;
 int cvmx_dprintf (char*,int,int) ;
 int cvmx_mgmt_port_link_get (int) ;
 int cvmx_mgmt_port_link_set (int,int ) ;
 TYPE_5__* cvmx_mgmt_port_state_ptr ;
 int cvmx_read_csr (int ) ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;
 int cvmx_write_csr (int ,int) ;
 int memcpy (int *,scalar_t__*,int) ;

int cvmx_mgmt_port_receive(int port, int buffer_len, uint8_t *buffer)
{
    cvmx_mixx_ircnt_t mix_ircnt;
    cvmx_mgmt_port_state_t *state;
    int result;

    if ((port < 0) || (port >= __cvmx_mgmt_port_num_ports()))
        return CVMX_MGMT_PORT_INVALID_PARAM;


    if (buffer_len < 1)
        return CVMX_MGMT_PORT_INVALID_PARAM;

    if (buffer == ((void*)0))
        return CVMX_MGMT_PORT_INVALID_PARAM;

    state = cvmx_mgmt_port_state_ptr + port;

    cvmx_spinlock_lock(&state->lock);


    mix_ircnt.u64 = cvmx_read_csr(CVMX_MIXX_IRCNT(port));
    if (mix_ircnt.s.ircnt)
    {
        uint64_t *source = (void *)state->rx_buffers[state->rx_read_index];
 uint64_t *zero_check = source;



        if (OCTEON_IS_MODEL(OCTEON_CN56XX_PASS1_X) && (*zero_check == 0))
            source++;

        result = 0;


        while (state->rx_ring[state->rx_read_index].s.code == 16)
        {

            int length = state->rx_ring[state->rx_read_index].s.len;
            if (length > buffer_len)
                length = buffer_len;
            memcpy(buffer, source, length);


            buffer += length;
            buffer_len -= length;
            result += length;


            state->rx_ring[state->rx_read_index].s.code = 0;
            state->rx_ring[state->rx_read_index].s.len = CVMX_MGMT_PORT_RX_BUFFER_SIZE - 8;
            state->rx_read_index = (state->rx_read_index + 1) % CVMX_MGMT_PORT_NUM_RX_BUFFERS;

            *zero_check = 0;
            CVMX_SYNCWS;

            cvmx_write_csr(CVMX_MIXX_IRING2(port), 1);
            source = (void *)state->rx_buffers[state->rx_read_index];
            zero_check = source;
        }


        if (state->rx_ring[state->rx_read_index].s.code == 15)
        {
            if (buffer_len >= state->rx_ring[state->rx_read_index].s.len)
            {
                int length = state->rx_ring[state->rx_read_index].s.len;
                memcpy(buffer, source, length);
                result += length;
            }
            else
            {

                cvmx_dprintf("ERROR: cvmx_mgmt_port_receive: Packet (%d) larger than supplied buffer (%d)\n", state->rx_ring[state->rx_read_index].s.len, buffer_len);
                result = CVMX_MGMT_PORT_NO_MEMORY;
            }
        }
        else
        {
            cvmx_dprintf("ERROR: cvmx_mgmt_port_receive: Receive error code %d. Packet dropped(Len %d), \n",
                         state->rx_ring[state->rx_read_index].s.code, state->rx_ring[state->rx_read_index].s.len + result);
            result = -state->rx_ring[state->rx_read_index].s.code;



            cvmx_mgmt_port_link_set(port, cvmx_mgmt_port_link_get(port));
        }



        state->rx_ring[state->rx_read_index].s.code = 0;
        state->rx_ring[state->rx_read_index].s.len = CVMX_MGMT_PORT_RX_BUFFER_SIZE - 8;
        state->rx_read_index = (state->rx_read_index + 1) % CVMX_MGMT_PORT_NUM_RX_BUFFERS;

        *zero_check = 0;
        CVMX_SYNCWS;

        cvmx_write_csr(CVMX_MIXX_IRING2(port), 1);

        cvmx_write_csr(CVMX_MIXX_IRCNT(port), 1);
    }
    else
    {

        result = 0;
    }
    cvmx_spinlock_unlock(&state->lock);
    return result;
}
