
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int flags; } ;
struct TYPE_2__ {int handle; } ;
typedef int PKT_RX_MODE ;


 int FALSE ;
 int IFF_PROMISC ;
 int PDRX_ALL_PACKETS ;
 int PDRX_BROADCAST ;
 int PktInitDriver (int ) ;
 int PktQueueBusy (int ) ;
 int PktResetStatistics (int ) ;
 TYPE_1__ pktInfo ;

__attribute__((used)) static int pkt_open (struct device *dev)
{
  PKT_RX_MODE mode;

  if (dev->flags & IFF_PROMISC)
       mode = PDRX_ALL_PACKETS;
  else mode = PDRX_BROADCAST;

  if (!PktInitDriver(mode))
     return (0);

  PktResetStatistics (pktInfo.handle);
  PktQueueBusy (FALSE);
  return (1);
}
