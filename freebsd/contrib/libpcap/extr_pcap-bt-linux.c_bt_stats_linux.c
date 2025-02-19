
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_stat {scalar_t__ ps_ifdrop; scalar_t__ ps_drop; scalar_t__ ps_recv; } ;
struct pcap_bt {int dev_id; } ;
struct hci_dev_stats {scalar_t__ err_tx; scalar_t__ err_rx; scalar_t__ sco_tx; scalar_t__ acl_tx; scalar_t__ cmd_tx; scalar_t__ sco_rx; scalar_t__ acl_rx; scalar_t__ evt_rx; } ;
struct hci_dev_info {int dev_id; struct hci_dev_stats stat; } ;
struct TYPE_3__ {int errbuf; int fd; struct pcap_bt* priv; } ;
typedef TYPE_1__ pcap_t ;


 scalar_t__ EINTR ;
 int HCIGETDEVINFO ;
 int PCAP_ERRBUF_SIZE ;
 scalar_t__ errno ;
 int ioctl (int ,int ,void*) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,scalar_t__,char*) ;

__attribute__((used)) static int
bt_stats_linux(pcap_t *handle, struct pcap_stat *stats)
{
 struct pcap_bt *handlep = handle->priv;
 int ret;
 struct hci_dev_info dev_info;
 struct hci_dev_stats * s = &dev_info.stat;
 dev_info.dev_id = handlep->dev_id;


 do {
  ret = ioctl(handle->fd, HCIGETDEVINFO, (void *)&dev_info);
 } while ((ret == -1) && (errno == EINTR));

 if (ret < 0) {
  pcap_fmt_errmsg_for_errno(handle->errbuf, PCAP_ERRBUF_SIZE,
      errno, "Can't get stats via ioctl");
  return (-1);

 }


 stats->ps_recv = s->evt_rx + s->acl_rx + s->sco_rx + s->cmd_tx +
  s->acl_tx +s->sco_tx;
 stats->ps_drop = s->err_rx + s->err_tx;
 stats->ps_ifdrop = 0;
 return 0;
}
