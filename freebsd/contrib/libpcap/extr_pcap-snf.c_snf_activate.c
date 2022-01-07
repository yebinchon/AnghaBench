
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_snf {int snf_timeout; int * snf_inj; int snf_handle; int snf_ring; int snf_boardnum; } ;
struct TYPE_4__ {char* device; int buffer_size; int timeout; } ;
struct TYPE_5__ {scalar_t__ snapshot; int selectable_fd; int cleanup_op; int stats_op; int setnonblock_op; int getnonblock_op; int set_datalink_op; int * setdirection_op; int setfilter_op; int inject_op; int read_op; int linktype; int errbuf; TYPE_1__ opt; struct pcap_snf* priv; } ;
typedef TYPE_2__ pcap_t ;


 int DLT_EN10MB ;
 scalar_t__ MAXIMUM_SNAPLEN ;
 int PCAP_ERRBUF_SIZE ;
 int SNF_F_PSHARED ;
 int atoi (char const*) ;
 char* getenv (char*) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int,char*,...) ;
 int pcap_snprintf (int ,int ,char*) ;
 int snf_getnonblock ;
 int snf_inject ;
 int snf_open (int ,int ,int *,int,int,int *) ;
 int snf_pcap_stats ;
 int snf_platform_cleanup ;
 int snf_read ;
 int snf_ring_open_id (int ,int,int *) ;
 int snf_set_datalink ;
 int snf_setfilter ;
 int snf_setnonblock ;
 int snf_start (int ) ;
 int strtol (char const*,int *,int ) ;

__attribute__((used)) static int
snf_activate(pcap_t* p)
{
 struct pcap_snf *ps = p->priv;
 char *device = p->opt.device;
 const char *nr = ((void*)0);
 int err;
 int flags = -1, ring_id = -1;

 if (device == ((void*)0)) {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "device is NULL");
  return -1;
 }



 if ((nr = getenv("SNF_FLAGS")) && *nr)
  flags = strtol(nr, ((void*)0), 0);
 else if ((nr = getenv("SNF_NUM_RINGS")) && *nr && atoi(nr) > 1)
  flags = SNF_F_PSHARED;
 else
  nr = ((void*)0);
 err = snf_open(ps->snf_boardnum,
   0,
   ((void*)0),
                        (p->opt.buffer_size > 0 && p->opt.buffer_size < 1048576) ? 1048576 : p->opt.buffer_size,
   flags,
   &ps->snf_handle);
 if (err != 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      err, "snf_open failed");
  return -1;
 }

 if ((nr = getenv("SNF_PCAP_RING_ID")) && *nr) {
  ring_id = (int) strtol(nr, ((void*)0), 0);
 }
 err = snf_ring_open_id(ps->snf_handle, ring_id, &ps->snf_ring);
 if (err != 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      err, "snf_ring_open_id(ring=%d) failed", ring_id);
  return -1;
 }
 if (p->snapshot <= 0 || p->snapshot > MAXIMUM_SNAPLEN)
  p->snapshot = MAXIMUM_SNAPLEN;

 if (p->opt.timeout <= 0)
  ps->snf_timeout = -1;
 else
  ps->snf_timeout = p->opt.timeout;

 err = snf_start(ps->snf_handle);
 if (err != 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      err, "snf_start failed");
  return -1;
 }





 p->selectable_fd = -1;

 p->linktype = DLT_EN10MB;
 p->read_op = snf_read;
 p->inject_op = snf_inject;
 p->setfilter_op = snf_setfilter;
 p->setdirection_op = ((void*)0);
 p->set_datalink_op = snf_set_datalink;
 p->getnonblock_op = snf_getnonblock;
 p->setnonblock_op = snf_setnonblock;
 p->stats_op = snf_pcap_stats;
 p->cleanup_op = snf_platform_cleanup;



 return 0;
}
