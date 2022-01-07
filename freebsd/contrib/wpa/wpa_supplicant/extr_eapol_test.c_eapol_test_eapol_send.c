
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int IEEE802_1X_TYPE_EAP_PACKET ;
 int MSG_DEBUG ;
 int eapol_test ;
 int ieee802_1x_encapsulate_radius (int *,int const*,size_t) ;
 int printf (char*,int,unsigned long) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;

__attribute__((used)) static int eapol_test_eapol_send(void *ctx, int type, const u8 *buf,
     size_t len)
{
 printf("WPA: eapol_test_eapol_send(type=%d len=%lu)\n",
        type, (unsigned long) len);
 if (type == IEEE802_1X_TYPE_EAP_PACKET) {
  wpa_hexdump(MSG_DEBUG, "TX EAP -> RADIUS", buf, len);
  ieee802_1x_encapsulate_radius(&eapol_test, buf, len);
 }
 return 0;
}
