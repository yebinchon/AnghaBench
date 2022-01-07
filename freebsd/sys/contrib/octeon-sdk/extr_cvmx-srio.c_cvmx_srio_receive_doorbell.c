
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_7__ {int src_id; int priority; int id16; int dest_id; int data; } ;
struct TYPE_8__ {TYPE_2__ s; void* u64; } ;
typedef TYPE_3__ cvmx_sriox_rx_bell_t ;
struct TYPE_6__ {int seq; int count; } ;
struct TYPE_9__ {TYPE_1__ s; void* u64; } ;
typedef TYPE_4__ cvmx_sriox_rx_bell_seq_t ;
typedef int cvmx_srio_doorbell_status_t ;
struct TYPE_10__ {int flags; } ;


 int CVMX_SRIOX_RX_BELL (int) ;
 int CVMX_SRIOX_RX_BELL_SEQ (int) ;
 int CVMX_SRIO_DOORBELL_DONE ;
 int CVMX_SRIO_DOORBELL_NONE ;
 int CVMX_SRIO_INITIALIZE_DEBUG ;
 TYPE_5__* __cvmx_srio_state ;
 int cvmx_dprintf (char*,int,int ,int,int,int ) ;
 void* cvmx_read_csr (int ) ;

cvmx_srio_doorbell_status_t cvmx_srio_receive_doorbell(int srio_port,
        int *destid_index, uint32_t *sequence_num, int *srcid, int *priority,
        int *is16bit, uint16_t *data)
{
    cvmx_sriox_rx_bell_seq_t rx_bell_seq;
    cvmx_sriox_rx_bell_t rx_bell;


    rx_bell_seq.u64 = cvmx_read_csr(CVMX_SRIOX_RX_BELL_SEQ(srio_port));
    if (!rx_bell_seq.s.count)
        return CVMX_SRIO_DOORBELL_NONE;


    rx_bell.u64 = cvmx_read_csr(CVMX_SRIOX_RX_BELL(srio_port));
    *sequence_num = rx_bell_seq.s.seq;
    *srcid = rx_bell.s.src_id;
    *priority = rx_bell.s.priority;
    *is16bit = rx_bell.s.id16;
    *data = rx_bell.s.data;
    *destid_index = rx_bell.s.dest_id;

    if (__cvmx_srio_state[srio_port].flags & CVMX_SRIO_INITIALIZE_DEBUG)
        cvmx_dprintf("SRIO%d: Receive doorbell sequence=0x%x, srcid=0x%x, priority=%d, data=0x%x\n",
            srio_port, rx_bell_seq.s.seq, rx_bell.s.src_id, rx_bell.s.priority, rx_bell.s.data);

    return CVMX_SRIO_DOORBELL_DONE;
}
