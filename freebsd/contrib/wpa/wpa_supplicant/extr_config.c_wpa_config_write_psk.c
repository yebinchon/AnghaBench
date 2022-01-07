
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_ssid {int psk; scalar_t__ psk_set; scalar_t__ passphrase; scalar_t__ ext_psk; } ;
struct parse_data {int dummy; } ;


 int PMK_LEN ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int os_snprintf (char*,size_t,char*,scalar_t__) ;
 scalar_t__ os_snprintf_error (size_t,int) ;
 int os_strlen (scalar_t__) ;
 char* wpa_config_write_string_ascii (int const*,int) ;
 char* wpa_config_write_string_hex (int ,int ) ;

__attribute__((used)) static char * wpa_config_write_psk(const struct parse_data *data,
       struct wpa_ssid *ssid)
{
 if (ssid->passphrase)
  return wpa_config_write_string_ascii(
   (const u8 *) ssid->passphrase,
   os_strlen(ssid->passphrase));

 if (ssid->psk_set)
  return wpa_config_write_string_hex(ssid->psk, PMK_LEN);

 return ((void*)0);
}
