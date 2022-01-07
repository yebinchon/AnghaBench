
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * priv; } ;
typedef int BOOL ;


 int PktExitDriver () ;
 int fprintf (int ,char*,int) ;
 int free (int *) ;
 int pcap_pkt_debug ;
 int stderr ;

__attribute__((used)) static void pkt_close (struct device *dev)
{
  BOOL okay = PktExitDriver();

  if (pcap_pkt_debug > 1)
     fprintf (stderr, "pkt_close(): %d\n", okay);

  if (dev->priv)
     free (dev->priv);
  dev->priv = ((void*)0);
}
