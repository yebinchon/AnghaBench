
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_6__ {int tstamp_precision; } ;
struct TYPE_7__ {int snapshot; int linktype; int activated; scalar_t__ bpf_codegen_flags; int cleanup_op; int get_airpcap_handle_op; int live_dump_ended_op; int live_dump_op; int setuserbuffer_op; int sendqueue_transmit_op; int oid_set_request_op; int oid_get_request_op; int getevent_op; int setmintocopy_op; int setmode_op; int setbuff_op; int stats_ex_op; int stats_op; int setnonblock_op; int getnonblock_op; int set_datalink_op; int setdirection_op; int setfilter_op; int inject_op; int read_op; int can_set_rfmon_op; TYPE_1__ opt; } ;
typedef TYPE_2__ pcap_t ;




 TYPE_2__* malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int pcap_can_set_rfmon_dead ;
 int pcap_cleanup_dead ;
 int pcap_get_airpcap_handle_dead ;
 int pcap_getevent_dead ;
 int pcap_getnonblock_dead ;
 int pcap_inject_dead ;
 int pcap_live_dump_dead ;
 int pcap_live_dump_ended_dead ;
 int pcap_oid_get_request_dead ;
 int pcap_oid_set_request_dead ;
 int pcap_read_dead ;
 int pcap_sendqueue_transmit_dead ;
 int pcap_set_datalink_dead ;
 int pcap_setbuff_dead ;
 int pcap_setdirection_dead ;
 int pcap_setfilter_dead ;
 int pcap_setmintocopy_dead ;
 int pcap_setmode_dead ;
 int pcap_setnonblock_dead ;
 int pcap_setuserbuffer_dead ;
 int pcap_stats_dead ;
 int pcap_stats_ex_dead ;

pcap_t *
pcap_open_dead_with_tstamp_precision(int linktype, int snaplen, u_int precision)
{
 pcap_t *p;

 switch (precision) {

 case 129:
 case 128:
  break;

 default:






  precision = 129;
  break;
 }
 p = malloc(sizeof(*p));
 if (p == ((void*)0))
  return ((void*)0);
 memset (p, 0, sizeof(*p));
 p->snapshot = snaplen;
 p->linktype = linktype;
 p->opt.tstamp_precision = precision;
 p->can_set_rfmon_op = pcap_can_set_rfmon_dead;
 p->read_op = pcap_read_dead;
 p->inject_op = pcap_inject_dead;
 p->setfilter_op = pcap_setfilter_dead;
 p->setdirection_op = pcap_setdirection_dead;
 p->set_datalink_op = pcap_set_datalink_dead;
 p->getnonblock_op = pcap_getnonblock_dead;
 p->setnonblock_op = pcap_setnonblock_dead;
 p->stats_op = pcap_stats_dead;
 p->cleanup_op = pcap_cleanup_dead;




 p->bpf_codegen_flags = 0;

 p->activated = 1;
 return (p);
}
