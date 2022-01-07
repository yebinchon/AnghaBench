
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_in {scalar_t__ sin_family; int sin_addr; } ;
struct pcap_addr {struct pcap_addr* next; scalar_t__ addr; } ;
struct l2_packet_data {int ifname; } ;
struct TYPE_4__ {struct pcap_addr* addresses; int name; struct TYPE_4__* next; } ;
typedef TYPE_1__ pcap_if_t ;


 scalar_t__ AF_INET ;
 int MSG_DEBUG ;
 int PCAP_ERRBUF_SIZE ;
 int inet_ntoa (int ) ;
 scalar_t__ os_strcmp (int ,int ) ;
 int os_strlcpy (char*,int ,size_t) ;
 scalar_t__ pcap_findalldevs (TYPE_1__**,char*) ;
 int pcap_freealldevs (TYPE_1__*) ;
 int wpa_printf (int ,char*,char*) ;

int l2_packet_get_ip_addr(struct l2_packet_data *l2, char *buf, size_t len)
{
 pcap_if_t *devs, *dev;
 struct pcap_addr *addr;
 struct sockaddr_in *saddr;
 int found = 0;
 char err[PCAP_ERRBUF_SIZE + 1];

 if (pcap_findalldevs(&devs, err) < 0) {
  wpa_printf(MSG_DEBUG, "pcap_findalldevs: %s\n", err);
  return -1;
 }

 for (dev = devs; dev && !found; dev = dev->next) {
  if (os_strcmp(dev->name, l2->ifname) != 0)
   continue;

  addr = dev->addresses;
  while (addr) {
   saddr = (struct sockaddr_in *) addr->addr;
   if (saddr && saddr->sin_family == AF_INET) {
    os_strlcpy(buf, inet_ntoa(saddr->sin_addr),
        len);
    found = 1;
    break;
   }
   addr = addr->next;
  }
 }

 pcap_freealldevs(devs);

 return found ? 0 : -1;
}
