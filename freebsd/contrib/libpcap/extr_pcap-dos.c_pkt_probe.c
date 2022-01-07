
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct device {int priv; int * release_rx_buf; int * peek_rx_buf; int * get_rx_buf; int copy_rx_buf; int get_stats; int close; int xmit; int open; } ;


 int PktReceive ;
 int PktSearchDriver () ;
 int calloc (int,int) ;
 int pkt_close ;
 int pkt_open ;
 int pkt_stats ;
 int pkt_xmit ;

__attribute__((used)) static int pkt_probe (struct device *dev)
{
  if (!PktSearchDriver())
     return (0);

  dev->open = pkt_open;
  dev->xmit = pkt_xmit;
  dev->close = pkt_close;
  dev->get_stats = pkt_stats;
  dev->copy_rx_buf = PktReceive;
  dev->get_rx_buf = ((void*)0);
  dev->peek_rx_buf = ((void*)0);
  dev->release_rx_buf = ((void*)0);
  dev->priv = calloc (sizeof(struct net_device_stats), 1);
  if (!dev->priv)
     return (0);
  return (1);
}
