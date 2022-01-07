
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int RSN_CIPHER_SUITE_CCMP ;
 int RSN_CIPHER_SUITE_CCMP_256 ;
 int RSN_CIPHER_SUITE_GCMP ;
 int RSN_CIPHER_SUITE_GCMP_256 ;
 int RSN_CIPHER_SUITE_NONE ;
 int RSN_CIPHER_SUITE_TKIP ;
 int RSN_SELECTOR_LEN ;
 int RSN_SELECTOR_PUT (int *,int ) ;
 int WPA_CIPHER_CCMP ;
 int WPA_CIPHER_CCMP_256 ;
 int WPA_CIPHER_GCMP ;
 int WPA_CIPHER_GCMP_256 ;
 int WPA_CIPHER_NONE ;
 int WPA_CIPHER_TKIP ;

int rsn_cipher_put_suites(u8 *start, int ciphers)
{
 u8 *pos = start;

 if (ciphers & WPA_CIPHER_CCMP_256) {
  RSN_SELECTOR_PUT(pos, RSN_CIPHER_SUITE_CCMP_256);
  pos += RSN_SELECTOR_LEN;
 }
 if (ciphers & WPA_CIPHER_GCMP_256) {
  RSN_SELECTOR_PUT(pos, RSN_CIPHER_SUITE_GCMP_256);
  pos += RSN_SELECTOR_LEN;
 }
 if (ciphers & WPA_CIPHER_CCMP) {
  RSN_SELECTOR_PUT(pos, RSN_CIPHER_SUITE_CCMP);
  pos += RSN_SELECTOR_LEN;
 }
 if (ciphers & WPA_CIPHER_GCMP) {
  RSN_SELECTOR_PUT(pos, RSN_CIPHER_SUITE_GCMP);
  pos += RSN_SELECTOR_LEN;
 }
 if (ciphers & WPA_CIPHER_TKIP) {
  RSN_SELECTOR_PUT(pos, RSN_CIPHER_SUITE_TKIP);
  pos += RSN_SELECTOR_LEN;
 }
 if (ciphers & WPA_CIPHER_NONE) {
  RSN_SELECTOR_PUT(pos, RSN_CIPHER_SUITE_NONE);
  pos += RSN_SELECTOR_LEN;
 }

 return (pos - start) / RSN_SELECTOR_LEN;
}
