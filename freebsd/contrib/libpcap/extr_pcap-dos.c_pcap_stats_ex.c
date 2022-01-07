
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_stat_ex {int dummy; } ;
struct device {int (* get_stats ) (struct device*) ;int name; } ;
struct TYPE_3__ {int errbuf; int fd; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 struct device* get_device (int ) ;
 int memcpy (struct pcap_stat_ex*,int ,int) ;
 int strlcpy (int ,char*,int ) ;
 int strnicmp (int ,char*,int) ;
 int stub1 (struct device*) ;

int pcap_stats_ex (pcap_t *p, struct pcap_stat_ex *se)
{
  struct device *dev = p ? get_device (p->fd) : ((void*)0);

  if (!dev || !dev->get_stats)
  {
    strlcpy (p->errbuf, "detailed device statistics not available",
             PCAP_ERRBUF_SIZE);
    return (-1);
  }

  if (!strnicmp(dev->name,"pkt",3))
  {
    strlcpy (p->errbuf, "pktdrvr doesn't have detailed statistics",
             PCAP_ERRBUF_SIZE);
    return (-1);
  }
  memcpy (se, (*dev->get_stats)(dev), sizeof(*se));
  return (0);
}
