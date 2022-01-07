
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * release_rx_buf; int * peek_rx_buf; int * get_rx_buf; int * copy_rx_buf; int get_stats; int close; int * xmit; int open; } ;


 int NdisOpen () ;
 int ndis_close ;
 int ndis_open ;
 int ndis_stats ;

__attribute__((used)) static int ndis_probe (struct device *dev)
{





  dev->open = ndis_open;
  dev->xmit = ((void*)0);
  dev->close = ndis_close;
  dev->get_stats = ndis_stats;
  dev->copy_rx_buf = ((void*)0);
  dev->get_rx_buf = ((void*)0);
  dev->peek_rx_buf = ((void*)0);
  dev->release_rx_buf = ((void*)0);
  return (0);
}
