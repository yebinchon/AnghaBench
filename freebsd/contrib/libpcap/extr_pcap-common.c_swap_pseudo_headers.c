
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pcap_pkthdr {int dummy; } ;






 int swap_linux_sll_header (struct pcap_pkthdr*,int *) ;
 int swap_linux_usb_header (struct pcap_pkthdr*,int *,int) ;
 int swap_nflog_header (struct pcap_pkthdr*,int *) ;

void
swap_pseudo_headers(int linktype, struct pcap_pkthdr *hdr, u_char *data)
{





 switch (linktype) {

 case 131:
  swap_linux_sll_header(hdr, data);
  break;

 case 129:
  swap_linux_usb_header(hdr, data, 0);
  break;

 case 128:
  swap_linux_usb_header(hdr, data, 1);
  break;

 case 130:
  swap_nflog_header(hdr, data);
  break;
 }
}
