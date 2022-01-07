
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct sll_header {int sll_protocol; } ;
struct pcap_pkthdr {scalar_t__ caplen; scalar_t__ len; } ;
struct TYPE_2__ {int can_id; } ;
typedef TYPE_1__ pcap_can_socketcan_hdr ;


 scalar_t__ EXTRACT_16BITS (int *) ;
 scalar_t__ LINUX_SLL_P_CAN ;
 scalar_t__ LINUX_SLL_P_CANFD ;
 int SWAPLONG (int ) ;

__attribute__((used)) static void
swap_linux_sll_header(const struct pcap_pkthdr *hdr, u_char *buf)
{
 u_int caplen = hdr->caplen;
 u_int length = hdr->len;
 struct sll_header *shdr = (struct sll_header *)buf;
 uint16_t protocol;
 pcap_can_socketcan_hdr *chdr;

 if (caplen < (u_int) sizeof(struct sll_header) ||
     length < (u_int) sizeof(struct sll_header)) {

  return;
 }

 protocol = EXTRACT_16BITS(&shdr->sll_protocol);
 if (protocol != LINUX_SLL_P_CAN && protocol != LINUX_SLL_P_CANFD)
  return;




 chdr = (pcap_can_socketcan_hdr *)(buf + sizeof(struct sll_header));
 if (caplen < (u_int) sizeof(struct sll_header) + sizeof(chdr->can_id) ||
     length < (u_int) sizeof(struct sll_header) + sizeof(chdr->can_id)) {

  return;
 }
 chdr->can_id = SWAPLONG(chdr->can_id);
}
