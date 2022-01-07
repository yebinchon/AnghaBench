
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2_packet_data {scalar_t__ pcap; } ;


 int eloop_unregister_read_sock (int ) ;
 int os_free (struct l2_packet_data*) ;
 int pcap_close (scalar_t__) ;
 int pcap_get_selectable_fd (scalar_t__) ;

void l2_packet_deinit(struct l2_packet_data *l2)
{
 if (l2 != ((void*)0)) {
  if (l2->pcap) {
   eloop_unregister_read_sock(
    pcap_get_selectable_fd(l2->pcap));
   pcap_close(l2->pcap);
  }
  os_free(l2);
 }
}
