
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ stats_op_t ;
typedef scalar_t__ stats_ex_op_t ;
typedef scalar_t__ setuserbuffer_op_t ;
typedef scalar_t__ setmode_op_t ;
typedef scalar_t__ setmintocopy_op_t ;
typedef scalar_t__ setfilter_op_t ;
typedef scalar_t__ setdirection_op_t ;
typedef scalar_t__ setbuff_op_t ;
typedef scalar_t__ set_datalink_op_t ;
typedef scalar_t__ read_op_t ;
struct TYPE_3__ {int oneshot_callback; int cleanup_op; int get_airpcap_handle_op; scalar_t__ live_dump_ended_op; scalar_t__ live_dump_op; scalar_t__ setuserbuffer_op; int sendqueue_transmit_op; scalar_t__ oid_set_request_op; scalar_t__ oid_get_request_op; int getevent_op; scalar_t__ setmintocopy_op; scalar_t__ setmode_op; scalar_t__ setbuff_op; scalar_t__ stats_ex_op; scalar_t__ stats_op; scalar_t__ getnonblock_op; scalar_t__ set_datalink_op; scalar_t__ setdirection_op; scalar_t__ setfilter_op; scalar_t__ inject_op; scalar_t__ read_op; } ;
typedef TYPE_1__ pcap_t ;
typedef scalar_t__ oid_set_request_op_t ;
typedef scalar_t__ oid_get_request_op_t ;
typedef scalar_t__ live_dump_op_t ;
typedef scalar_t__ live_dump_ended_op_t ;
typedef scalar_t__ inject_op_t ;
typedef scalar_t__ getnonblock_op_t ;


 int pcap_cleanup_live_common ;
 int pcap_get_airpcap_handle_not_initialized ;
 int pcap_getevent_not_initialized ;
 scalar_t__ pcap_not_initialized ;
 scalar_t__ pcap_not_initialized_ptr ;
 int pcap_oneshot ;
 int pcap_sendqueue_transmit_not_initialized ;

__attribute__((used)) static void
initialize_ops(pcap_t *p)
{





 p->read_op = (read_op_t)pcap_not_initialized;
 p->inject_op = (inject_op_t)pcap_not_initialized;
 p->setfilter_op = (setfilter_op_t)pcap_not_initialized;
 p->setdirection_op = (setdirection_op_t)pcap_not_initialized;
 p->set_datalink_op = (set_datalink_op_t)pcap_not_initialized;
 p->getnonblock_op = (getnonblock_op_t)pcap_not_initialized;
 p->stats_op = (stats_op_t)pcap_not_initialized;
 p->cleanup_op = pcap_cleanup_live_common;





 p->oneshot_callback = pcap_oneshot;
}
