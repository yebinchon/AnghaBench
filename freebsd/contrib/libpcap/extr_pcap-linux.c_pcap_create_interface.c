
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
struct pcap_linux {int dummy; } ;
struct TYPE_6__ {int tstamp_precision_count; int * tstamp_precision_list; int can_set_rfmon_op; int activate_op; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 int PCAP_TSTAMP_PRECISION_MICRO ;
 int PCAP_TSTAMP_PRECISION_NANO ;
 int errno ;
 int iface_ethtool_get_ts_info (char const*,TYPE_1__*,char*) ;
 int * malloc (int) ;
 int pcap_activate_linux ;
 int pcap_can_set_rfmon_linux ;
 int pcap_close (TYPE_1__*) ;
 TYPE_1__* pcap_create_common (char*,int) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int ,char*) ;

pcap_t *
pcap_create_interface(const char *device, char *ebuf)
{
 pcap_t *handle;

 handle = pcap_create_common(ebuf, sizeof (struct pcap_linux));
 if (handle == ((void*)0))
  return ((void*)0);

 handle->activate_op = pcap_activate_linux;
 handle->can_set_rfmon_op = pcap_can_set_rfmon_linux;
 return handle;
}
