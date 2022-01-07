
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int title ;


 size_t MAX_WEP_KEY_LEN ;
 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 int os_free (char*) ;
 int os_memcpy (int *,char*,size_t) ;
 int os_snprintf (char*,int,char*,int) ;
 int os_snprintf_error (int,int) ;
 int str_clear_free (char*) ;
 char* wpa_config_parse_string (char const*,size_t*) ;
 int wpa_hexdump_key (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*,int,unsigned int,...) ;

__attribute__((used)) static int wpa_config_parse_wep_key(u8 *key, size_t *len, int line,
        const char *value, int idx)
{
 char *buf, title[20];
 int res;

 buf = wpa_config_parse_string(value, len);
 if (buf == ((void*)0)) {
  wpa_printf(MSG_ERROR, "Line %d: Invalid WEP key %d '%s'.",
      line, idx, value);
  return -1;
 }
 if (*len > MAX_WEP_KEY_LEN) {
  wpa_printf(MSG_ERROR, "Line %d: Too long WEP key %d '%s'.",
      line, idx, value);
  os_free(buf);
  return -1;
 }
 if (*len && *len != 5 && *len != 13 && *len != 16) {
  wpa_printf(MSG_ERROR, "Line %d: Invalid WEP key length %u - "
      "this network block will be ignored",
      line, (unsigned int) *len);
 }
 os_memcpy(key, buf, *len);
 str_clear_free(buf);
 res = os_snprintf(title, sizeof(title), "wep_key%d", idx);
 if (!os_snprintf_error(sizeof(title), res))
  wpa_hexdump_key(MSG_MSGDUMP, title, key, *len);
 return 0;
}
