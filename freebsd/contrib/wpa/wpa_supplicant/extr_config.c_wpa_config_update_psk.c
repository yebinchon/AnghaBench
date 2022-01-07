
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int psk_set; int psk; int ssid_len; int ssid; int passphrase; } ;


 int MSG_MSGDUMP ;
 int PMK_LEN ;
 int pbkdf2_sha1 (int ,int ,int ,int,int ,int ) ;
 int wpa_hexdump_key (int ,char*,int ,int ) ;

void wpa_config_update_psk(struct wpa_ssid *ssid)
{

 pbkdf2_sha1(ssid->passphrase, ssid->ssid, ssid->ssid_len, 4096,
      ssid->psk, PMK_LEN);
 wpa_hexdump_key(MSG_MSGDUMP, "PSK (from passphrase)",
   ssid->psk, PMK_LEN);
 ssid->psk_set = 1;

}
