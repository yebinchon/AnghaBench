
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIOCLOCK ;
 scalar_t__ DLT_PFLOG ;
 int LOG_ERR ;
 int PCAP_TO_MS ;
 int cur_snaplen ;
 int errbuf ;
 int errno ;
 int * hpcap ;
 int interface ;
 scalar_t__ ioctl (int ,int ) ;
 int logmsg (int ,char*,...) ;
 int pcap_close (int *) ;
 scalar_t__ pcap_datalink (int *) ;
 int pcap_fileno (int *) ;
 int * pcap_open_live (int ,int ,int,int ,int ) ;
 int pcap_snapshot (int *) ;
 int set_pcap_filter () ;
 int snaplen ;
 int strerror (int ) ;

int
init_pcap(void)
{
 hpcap = pcap_open_live(interface, snaplen, 1, PCAP_TO_MS, errbuf);
 if (hpcap == ((void*)0)) {
  logmsg(LOG_ERR, "Failed to initialize: %s", errbuf);
  return (-1);
 }

 if (pcap_datalink(hpcap) != DLT_PFLOG) {
  logmsg(LOG_ERR, "Invalid datalink type");
  pcap_close(hpcap);
  hpcap = ((void*)0);
  return (-1);
 }

 set_pcap_filter();

 cur_snaplen = snaplen = pcap_snapshot(hpcap);


 if (ioctl(pcap_fileno(hpcap), BIOCLOCK) < 0) {
  logmsg(LOG_ERR, "BIOCLOCK: %s", strerror(errno));
  return (-1);
 }

 return (0);
}
