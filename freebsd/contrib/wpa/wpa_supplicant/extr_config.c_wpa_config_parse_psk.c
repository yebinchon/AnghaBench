
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_ssid {char const* passphrase; int psk_set; int psk; int * ext_psk; } ;
struct parse_data {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 int PMK_LEN ;
 char const* dup_binstr (char const*,size_t) ;
 scalar_t__ has_ctrl_char (int *,size_t) ;
 scalar_t__ hexstr2bin (char const*,int ,int) ;
 int os_free (int *) ;
 scalar_t__ os_memcmp (char const*,char const*,size_t) ;
 int * os_strdup (char const*) ;
 size_t os_strlen (char const*) ;
 scalar_t__ os_strncmp (char const*,char*,int) ;
 char* os_strrchr (char const*,char) ;
 int str_clear_free (char const*) ;
 int wpa_hexdump_ascii_key (int ,char*,int *,size_t) ;
 int wpa_hexdump_key (int ,char*,int ,int) ;
 int wpa_printf (int ,char*,int,...) ;

__attribute__((used)) static int wpa_config_parse_psk(const struct parse_data *data,
    struct wpa_ssid *ssid, int line,
    const char *value)
{
 if (*value == '"') {

  const char *pos;
  size_t len;

  value++;
  pos = os_strrchr(value, '"');
  if (pos)
   len = pos - value;
  else
   len = os_strlen(value);
  if (len < 8 || len > 63) {
   wpa_printf(MSG_ERROR, "Line %d: Invalid passphrase "
       "length %lu (expected: 8..63) '%s'.",
       line, (unsigned long) len, value);
   return -1;
  }
  wpa_hexdump_ascii_key(MSG_MSGDUMP, "PSK (ASCII passphrase)",
          (u8 *) value, len);
  if (has_ctrl_char((u8 *) value, len)) {
   wpa_printf(MSG_ERROR,
       "Line %d: Invalid passphrase character",
       line);
   return -1;
  }
  if (ssid->passphrase && os_strlen(ssid->passphrase) == len &&
      os_memcmp(ssid->passphrase, value, len) == 0) {

   return 1;
  }
  ssid->psk_set = 0;
  str_clear_free(ssid->passphrase);
  ssid->passphrase = dup_binstr(value, len);
  if (ssid->passphrase == ((void*)0))
   return -1;
  return 0;





 }

 if (hexstr2bin(value, ssid->psk, PMK_LEN) ||
     value[PMK_LEN * 2] != '\0') {
  wpa_printf(MSG_ERROR, "Line %d: Invalid PSK '%s'.",
      line, value);
  return -1;
 }

 str_clear_free(ssid->passphrase);
 ssid->passphrase = ((void*)0);

 ssid->psk_set = 1;
 wpa_hexdump_key(MSG_MSGDUMP, "PSK", ssid->psk, PMK_LEN);
 return 0;
}
