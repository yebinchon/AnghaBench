
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ds_sbdrops; scalar_t__ ds_ifdrops; } ;
struct TYPE_5__ {scalar_t__ ss_sbdrops; scalar_t__ ss_ifdrops; } ;
struct rawstats {TYPE_2__ rs_drain; TYPE_1__ rs_snoop; } ;
struct pcap_stat {scalar_t__ ps_drop; } ;
struct pcap_snoop {struct pcap_stat stat; } ;
struct TYPE_7__ {int errbuf; int fd; struct pcap_snoop* priv; } ;
typedef TYPE_3__ pcap_t ;


 int SIOCRAWSTATS ;
 int errno ;
 scalar_t__ ioctl (int ,int ,char*) ;
 int memset (struct rawstats*,int ,int) ;
 int pcap_fmt_errmsg_for_errno (int ,int,int ,char*) ;

__attribute__((used)) static int
pcap_stats_snoop(pcap_t *p, struct pcap_stat *ps)
{
 struct pcap_snoop *psn = p->priv;
 register struct rawstats *rs;
 struct rawstats rawstats;

 rs = &rawstats;
 memset(rs, 0, sizeof(*rs));
 if (ioctl(p->fd, SIOCRAWSTATS, (char *)rs) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, sizeof(p->errbuf),
      errno, "SIOCRAWSTATS");
  return (-1);
 }
 psn->stat.ps_drop =
     rs->rs_snoop.ss_ifdrops + rs->rs_snoop.ss_sbdrops +
     rs->rs_drain.ds_ifdrops + rs->rs_drain.ds_sbdrops;






 *ps = psn->stat;
 return (0);
}
