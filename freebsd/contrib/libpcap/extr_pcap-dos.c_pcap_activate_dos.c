
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int device; int promisc; scalar_t__ rfmon; } ;
struct TYPE_8__ {scalar_t__ snapshot; int fd; TYPE_1__ opt; int errbuf; scalar_t__ bufsize; int buffer; int * setdirection_op; int setfilter_op; int inject_op; int stats_op; int read_op; int cleanup_op; int linktype; } ;
typedef TYPE_2__ pcap_t ;
struct TYPE_9__ {int name; } ;


 int DLT_EN10MB ;
 scalar_t__ ETH_MAX ;
 scalar_t__ ETH_MIN ;
 scalar_t__ MAXIMUM_SNAPLEN ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_RFMON_NOTSUP ;
 TYPE_5__* active_dev ;
 int atexit (int ) ;
 int calloc (scalar_t__,int) ;
 int close_driver ;
 int first_init (int ,int ,int ) ;
 TYPE_5__** handle_to_device ;
 int init_watt32 (TYPE_2__*,int ,int ) ;
 int pcap_cleanup_dos ;
 int pcap_read_dos ;
 int pcap_sendpacket_dos ;
 int pcap_setfilter_dos ;
 int pcap_snprintf (int ,int ,char*,int ,int ) ;
 int pcap_stats_dos ;
 int ref_count ;
 scalar_t__ stricmp (int ,int ) ;

__attribute__((used)) static int pcap_activate_dos (pcap_t *pcap)
{
  if (pcap->opt.rfmon) {



    return (PCAP_ERROR_RFMON_NOTSUP);
  }
  if (pcap->snapshot <= 0 || pcap->snapshot > MAXIMUM_SNAPLEN)
    pcap->snapshot = MAXIMUM_SNAPLEN;

  if (pcap->snapshot < ETH_MIN+8)
      pcap->snapshot = ETH_MIN+8;

  if (pcap->snapshot > ETH_MAX)
      pcap->snapshot = ETH_MAX;

  pcap->linktype = DLT_EN10MB;
  pcap->cleanup_op = pcap_cleanup_dos;
  pcap->read_op = pcap_read_dos;
  pcap->stats_op = pcap_stats_dos;
  pcap->inject_op = pcap_sendpacket_dos;
  pcap->setfilter_op = pcap_setfilter_dos;
  pcap->setdirection_op = ((void*)0);
  pcap->fd = ++ref_count;

  pcap->bufsize = ETH_MAX+100;
  pcap->buffer = calloc (pcap->bufsize, 1);

  if (pcap->fd == 1)
  {
    if (!init_watt32(pcap, pcap->opt.device, pcap->errbuf) ||
        !first_init(pcap->opt.device, pcap->errbuf, pcap->opt.promisc))
    {

      return (PCAP_ERROR);
    }
    atexit (close_driver);
  }
  else if (stricmp(active_dev->name,pcap->opt.device))
  {
    pcap_snprintf (pcap->errbuf, PCAP_ERRBUF_SIZE,
                   "Cannot use different devices simultaneously "
                   "(`%s' vs. `%s')", active_dev->name, pcap->opt.device);

    return (PCAP_ERROR);
  }
  handle_to_device [pcap->fd-1] = active_dev;
  return (0);
}
