#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcap_stat_ex {int dummy; } ;
struct device {int /*<<< orphan*/  (* get_stats ) (struct device*) ;int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  errbuf; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 struct device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcap_stat_ex*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

int FUNC5 (pcap_t *p, struct pcap_stat_ex *se)
{
  struct device *dev = p ? FUNC0 (p->fd) : NULL;

  if (!dev || !dev->get_stats)
  {
    FUNC2 (p->errbuf, "detailed device statistics not available",
             PCAP_ERRBUF_SIZE);
    return (-1);
  }

  if (!FUNC3(dev->name,"pkt",3))
  {
    FUNC2 (p->errbuf, "pktdrvr doesn't have detailed statistics",
             PCAP_ERRBUF_SIZE);
    return (-1);
  }
  FUNC1 (se, (*dev->get_stats)(dev), sizeof(*se));
  return (0);
}