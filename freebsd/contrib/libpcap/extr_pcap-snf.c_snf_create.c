
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct snf_ifaddrs {int snf_ifa_boardnum; struct snf_ifaddrs* snf_ifa_next; int snf_ifa_name; } ;
struct pcap_snf {int snf_boardnum; } ;
struct TYPE_5__ {int tstamp_precision_count; int activate_op; int * tstamp_precision_list; struct pcap_snf* priv; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 int PCAP_TSTAMP_PRECISION_MICRO ;
 int PCAP_TSTAMP_PRECISION_NANO ;
 int SNF_VERSION_API ;
 int errno ;
 int * malloc (int) ;
 int pcap_close (TYPE_1__*) ;
 TYPE_1__* pcap_create_common (char*,int) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int ,char*) ;
 int snf_activate ;
 int snf_freeifaddrs (struct snf_ifaddrs*) ;
 scalar_t__ snf_getifaddrs (struct snf_ifaddrs**) ;
 scalar_t__ snf_init (int ) ;
 int sscanf (char const*,char*,int*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,int ,size_t) ;

pcap_t *
snf_create(const char *device, char *ebuf, int *is_ours)
{
 pcap_t *p;
 int boardnum = -1;
 struct snf_ifaddrs *ifaddrs, *ifa;
 size_t devlen;
 struct pcap_snf *ps;

 if (snf_init(SNF_VERSION_API)) {

  *is_ours = 0;
  return ((void*)0);
 }





 if (snf_getifaddrs(&ifaddrs) || ifaddrs == ((void*)0)) {

  *is_ours = 0;
  return ((void*)0);
 }
 devlen = strlen(device) + 1;
 ifa = ifaddrs;
 while (ifa) {
  if (strncmp(device, ifa->snf_ifa_name, devlen) == 0) {
   boardnum = ifa->snf_ifa_boardnum;
   break;
  }
  ifa = ifa->snf_ifa_next;
 }
 snf_freeifaddrs(ifaddrs);

 if (ifa == ((void*)0)) {




  if (sscanf(device, "snf10g%d", &boardnum) != 1 &&
      sscanf(device, "snf%d", &boardnum) != 1) {

   *is_ours = 0;
   return ((void*)0);
  }
 }


 *is_ours = 1;

 p = pcap_create_common(ebuf, sizeof (struct pcap_snf));
 if (p == ((void*)0))
  return ((void*)0);
 ps = p->priv;




 p->tstamp_precision_count = 2;
 p->tstamp_precision_list = malloc(2 * sizeof(u_int));
 if (p->tstamp_precision_list == ((void*)0)) {
  pcap_fmt_errmsg_for_errno(ebuf, PCAP_ERRBUF_SIZE, errno,
      "malloc");
  pcap_close(p);
  return ((void*)0);
 }
 p->tstamp_precision_list[0] = PCAP_TSTAMP_PRECISION_MICRO;
 p->tstamp_precision_list[1] = PCAP_TSTAMP_PRECISION_NANO;

 p->activate_op = snf_activate;
 ps->snf_boardnum = boardnum;
 return p;
}
