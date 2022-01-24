#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int odbell; } ;
struct TYPE_10__ {int u64; TYPE_1__ s; } ;
typedef  TYPE_4__ cvmx_mixx_oring2_t ;
struct TYPE_11__ {size_t tx_write_index; int /*<<< orphan*/  lock; TYPE_3__* tx_ring; int /*<<< orphan*/  mac; scalar_t__* tx_buffers; } ;
typedef  TYPE_5__ cvmx_mgmt_port_state_t ;
typedef  int /*<<< orphan*/  cvmx_mgmt_port_result_t ;
struct TYPE_8__ {int len; scalar_t__ tstamp; } ;
struct TYPE_9__ {TYPE_2__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_MGMT_PORT_INVALID_PARAM ; 
 int /*<<< orphan*/  CVMX_MGMT_PORT_NO_MEMORY ; 
 int CVMX_MGMT_PORT_NUM_TX_BUFFERS ; 
 int /*<<< orphan*/  CVMX_MGMT_PORT_SUCCESS ; 
 int CVMX_MGMT_PORT_TX_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CVMX_SYNCWS ; 
 int FUNC2 () ; 
 TYPE_5__* cvmx_mgmt_port_state_ptr ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,int) ; 

cvmx_mgmt_port_result_t FUNC8(int port, int packet_len, void *buffer)
{
    cvmx_mgmt_port_state_t *state;
    cvmx_mixx_oring2_t mix_oring2;

    if ((port < 0) || (port >= FUNC2()))
        return CVMX_MGMT_PORT_INVALID_PARAM;

    /* Max sure the packet size is valid */
    if ((packet_len < 1) || (packet_len > CVMX_MGMT_PORT_TX_BUFFER_SIZE))
        return CVMX_MGMT_PORT_INVALID_PARAM;

    if (buffer == NULL)
        return CVMX_MGMT_PORT_INVALID_PARAM;

    state = cvmx_mgmt_port_state_ptr + port;

    FUNC4(&state->lock);

    mix_oring2.u64 = FUNC3(FUNC1(port));
    if (mix_oring2.s.odbell >= CVMX_MGMT_PORT_NUM_TX_BUFFERS - 1)
    {
        /* No room for another packet */
        FUNC5(&state->lock);
        return CVMX_MGMT_PORT_NO_MEMORY;
    }
    else
    {
        /* Copy the packet into the output buffer */
        FUNC7(state->tx_buffers[state->tx_write_index], buffer, packet_len);
        /* Insert the source MAC */
        FUNC7(state->tx_buffers[state->tx_write_index] + 6, ((char*)&state->mac) + 2, 6);
        /* Update the TX ring buffer entry size */
        state->tx_ring[state->tx_write_index].s.len = packet_len;
        /* This code doesn't support TX timestamps */
        state->tx_ring[state->tx_write_index].s.tstamp = 0;
        /* Increment our TX index */
        state->tx_write_index = (state->tx_write_index + 1) % CVMX_MGMT_PORT_NUM_TX_BUFFERS;
        /* Ring the doorbell, sending the packet */
        CVMX_SYNCWS;
        FUNC6(FUNC1(port), 1);
        if (FUNC3(FUNC0(port)))
            FUNC6(FUNC0(port), FUNC3(FUNC0(port)));

        FUNC5(&state->lock);
        return CVMX_MGMT_PORT_SUCCESS;
    }
}