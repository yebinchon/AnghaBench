
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct l2_ethhdr {int h_proto; struct l2_ethhdr* h_source; struct l2_ethhdr* h_dest; } ;
struct atheros_driver_data {int sock_xmit; } ;
typedef int buf ;


 size_t ETH_ALEN ;
 int ETH_P_EAPOL ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int host_to_be16 (int ) ;
 int l2_packet_send (int ,int const*,int ,unsigned char*,size_t) ;
 int os_free (unsigned char*) ;
 unsigned char* os_malloc (size_t) ;
 int os_memcpy (struct l2_ethhdr*,int const*,size_t) ;
 int wpa_hexdump (int ,char*,unsigned char*,size_t) ;
 int wpa_printf (int ,char*,unsigned long) ;

__attribute__((used)) static int
atheros_send_eapol(void *priv, const u8 *addr, const u8 *data, size_t data_len,
     int encrypt, const u8 *own_addr, u32 flags)
{
 struct atheros_driver_data *drv = priv;
 unsigned char buf[3000];
 unsigned char *bp = buf;
 struct l2_ethhdr *eth;
 size_t len;
 int status;







 len = data_len + sizeof(struct l2_ethhdr);
 if (len > sizeof(buf)) {
  bp = os_malloc(len);
  if (bp == ((void*)0)) {
   wpa_printf(MSG_INFO,
       "EAPOL frame discarded, cannot malloc temp buffer of size %lu!",
       (unsigned long) len);
   return -1;
  }
 }
 eth = (struct l2_ethhdr *) bp;
 os_memcpy(eth->h_dest, addr, ETH_ALEN);
 os_memcpy(eth->h_source, own_addr, ETH_ALEN);
 eth->h_proto = host_to_be16(ETH_P_EAPOL);
 os_memcpy(eth + 1, data, data_len);

 wpa_hexdump(MSG_MSGDUMP, "TX EAPOL", bp, len);

 status = l2_packet_send(drv->sock_xmit, addr, ETH_P_EAPOL, bp, len);

 if (bp != buf)
  os_free(bp);
 return status;
}
