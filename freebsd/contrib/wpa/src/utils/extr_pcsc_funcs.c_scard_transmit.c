
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scard_data {scalar_t__ protocol; int card; } ;


 int MSG_DEBUG ;
 int MSG_WARNING ;
 int SCARD_PCI_T0 ;
 int SCARD_PCI_T1 ;
 scalar_t__ SCARD_PROTOCOL_T1 ;
 long SCARD_S_SUCCESS ;
 long SCardTransmit (int ,int ,unsigned char*,unsigned long,int *,unsigned char*,unsigned long*) ;
 int wpa_hexdump (int ,char*,unsigned char*,unsigned long) ;
 int wpa_hexdump_key (int ,char*,unsigned char*,size_t) ;
 int wpa_printf (int ,char*,long) ;

__attribute__((used)) static long scard_transmit(struct scard_data *scard,
      unsigned char *_send, size_t send_len,
      unsigned char *_recv, size_t *recv_len)
{
 long ret;



 unsigned long rlen;


 wpa_hexdump_key(MSG_DEBUG, "SCARD: scard_transmit: send",
   _send, send_len);
 rlen = *recv_len;
 ret = SCardTransmit(scard->card,
       scard->protocol == SCARD_PROTOCOL_T1 ?
       SCARD_PCI_T1 : SCARD_PCI_T0,
       _send, (unsigned long) send_len,
       ((void*)0), _recv, &rlen);
 *recv_len = rlen;
 if (ret == SCARD_S_SUCCESS) {
  wpa_hexdump(MSG_DEBUG, "SCARD: scard_transmit: recv",
       _recv, rlen);
 } else {
  wpa_printf(MSG_WARNING, "SCARD: SCardTransmit failed "
      "(err=0x%lx)", ret);
 }
 return ret;
}
