
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_usb_linux {scalar_t__ packets_read; } ;
struct pcap_stat {scalar_t__ ps_ifdrop; int ps_drop; scalar_t__ ps_recv; } ;
struct mon_bin_stats {int dropped; scalar_t__ queued; } ;
struct TYPE_3__ {int fd; int errbuf; struct pcap_usb_linux* priv; } ;
typedef TYPE_1__ pcap_t ;


 int MON_IOCG_STATS ;
 int PCAP_ERRBUF_SIZE ;
 int errno ;
 int ioctl (int ,int ,struct mon_bin_stats*) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int ,char*,int ) ;

__attribute__((used)) static int
usb_stats_linux_bin(pcap_t *handle, struct pcap_stat *stats)
{
 struct pcap_usb_linux *handlep = handle->priv;
 int ret;
 struct mon_bin_stats st;
 ret = ioctl(handle->fd, MON_IOCG_STATS, &st);
 if (ret < 0)
 {
  pcap_fmt_errmsg_for_errno(handle->errbuf, PCAP_ERRBUF_SIZE,
      errno, "Can't read stats from fd %d", handle->fd);
  return -1;
 }

 stats->ps_recv = handlep->packets_read + st.queued;
 stats->ps_drop = st.dropped;
 stats->ps_ifdrop = 0;
 return 0;
}
