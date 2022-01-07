
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int tx_errors; } ;
struct device {scalar_t__ priv; } ;


 int PktTransmit (void const*,int) ;
 int dbug_write (char*) ;
 scalar_t__ pcap_pkt_debug ;

__attribute__((used)) static int pkt_xmit (struct device *dev, const void *buf, int len)
{
  struct net_device_stats *stats = (struct net_device_stats*) dev->priv;

  if (pcap_pkt_debug > 0)
     dbug_write ("pcap_xmit\n");

  if (!PktTransmit(buf,len))
  {
    stats->tx_errors++;
    return (0);
  }
  return (len);
}
