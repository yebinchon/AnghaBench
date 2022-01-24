#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int flags; int /*<<< orphan*/  (* set_multicast_list ) (struct device*) ;int /*<<< orphan*/  (* name ) (struct device*) ;int /*<<< orphan*/  (* open ) (struct device*) ;int /*<<< orphan*/  (* probe ) (struct device*) ;struct device* next; } ;
struct TYPE_2__ {char* error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (struct device*)) ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 struct device* active_dev ; 
 scalar_t__ dev_base ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_1__ pktInfo ; 
 struct device* probed_dev ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/  (*) (struct device*)) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  (*) (struct device*),char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 

__attribute__((used)) static struct device *
FUNC9 (const char *dev_name, char *ebuf, int promisc)
{
  struct device *dev;

  for (dev = (struct device*)dev_base; dev; dev = dev->next)
  {
    FUNC1 (dev->name);

    if (FUNC4 (dev_name,dev->name))
       continue;

    if (!probed_dev)   /* user didn't call pcap_lookupdev() first */
    {
      FUNC1 (dev->probe);

      if (!(*dev->probe)(dev))    /* call the xx_probe() function */
      {
        FUNC2 (ebuf, PCAP_ERRBUF_SIZE, "failed to detect device `%s'", dev_name);
        return (NULL);
      }
      probed_dev = dev;  /* device is probed okay and may be used */
    }
    else if (dev != probed_dev)
    {
      goto not_probed;
    }

    FUNC0();

    /* Select what traffic to receive
     */
    if (promisc)
         dev->flags |=  (IFF_ALLMULTI | IFF_PROMISC);
    else dev->flags &= ~(IFF_ALLMULTI | IFF_PROMISC);

    FUNC1 (dev->open);

    if (!(*dev->open)(dev))
    {
      FUNC2 (ebuf, PCAP_ERRBUF_SIZE, "failed to activate device `%s'", dev_name);
      if (pktInfo.error && !FUNC5(dev->name,"pkt",3))
      {
        FUNC3 (ebuf, ": ");
        FUNC3 (ebuf, pktInfo.error);
      }
      return (NULL);
    }

    /* Some devices need this to operate in promiscous mode
     */
    if (promisc && dev->set_multicast_list)
       (*dev->set_multicast_list) (dev);

    active_dev = dev;   /* remember our active device */
    break;
  }

  /* 'dev_name' not matched in 'dev_base' list.
   */
  if (!dev)
  {
    FUNC2 (ebuf, PCAP_ERRBUF_SIZE, "device `%s' not supported", dev_name);
    return (NULL);
  }

not_probed:
  if (!probed_dev)
  {
    FUNC2 (ebuf, PCAP_ERRBUF_SIZE, "device `%s' not probed", dev_name);
    return (NULL);
  }
  return (dev);
}