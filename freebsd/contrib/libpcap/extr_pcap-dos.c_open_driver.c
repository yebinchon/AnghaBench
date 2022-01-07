
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int flags; int (* set_multicast_list ) (struct device*) ;int (* name ) (struct device*) ;int (* open ) (struct device*) ;int (* probe ) (struct device*) ;struct device* next; } ;
struct TYPE_2__ {char* error; } ;


 int FLUSHK () ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int PCAP_ASSERT (int (*) (struct device*)) ;
 int PCAP_ERRBUF_SIZE ;
 struct device* active_dev ;
 scalar_t__ dev_base ;
 int pcap_snprintf (char*,int ,char*,char const*) ;
 TYPE_1__ pktInfo ;
 struct device* probed_dev ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char const*,int (*) (struct device*)) ;
 int strncmp (int (*) (struct device*),char*,int) ;
 int stub1 (struct device*) ;
 int stub2 (struct device*) ;
 int stub3 (struct device*) ;

__attribute__((used)) static struct device *
open_driver (const char *dev_name, char *ebuf, int promisc)
{
  struct device *dev;

  for (dev = (struct device*)dev_base; dev; dev = dev->next)
  {
    PCAP_ASSERT (dev->name);

    if (strcmp (dev_name,dev->name))
       continue;

    if (!probed_dev)
    {
      PCAP_ASSERT (dev->probe);

      if (!(*dev->probe)(dev))
      {
        pcap_snprintf (ebuf, PCAP_ERRBUF_SIZE, "failed to detect device `%s'", dev_name);
        return (((void*)0));
      }
      probed_dev = dev;
    }
    else if (dev != probed_dev)
    {
      goto not_probed;
    }

    FLUSHK();



    if (promisc)
         dev->flags |= (IFF_ALLMULTI | IFF_PROMISC);
    else dev->flags &= ~(IFF_ALLMULTI | IFF_PROMISC);

    PCAP_ASSERT (dev->open);

    if (!(*dev->open)(dev))
    {
      pcap_snprintf (ebuf, PCAP_ERRBUF_SIZE, "failed to activate device `%s'", dev_name);
      if (pktInfo.error && !strncmp(dev->name,"pkt",3))
      {
        strcat (ebuf, ": ");
        strcat (ebuf, pktInfo.error);
      }
      return (((void*)0));
    }



    if (promisc && dev->set_multicast_list)
       (*dev->set_multicast_list) (dev);

    active_dev = dev;
    break;
  }



  if (!dev)
  {
    pcap_snprintf (ebuf, PCAP_ERRBUF_SIZE, "device `%s' not supported", dev_name);
    return (((void*)0));
  }

not_probed:
  if (!probed_dev)
  {
    pcap_snprintf (ebuf, PCAP_ERRBUF_SIZE, "device `%s' not probed", dev_name);
    return (((void*)0));
  }
  return (dev);
}
