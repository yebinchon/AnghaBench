
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_ERROR ;
 int wpa_parse_cipher (char const*) ;
 int wpa_printf (int ,char*,int,...) ;

__attribute__((used)) static int wpa_config_parse_cipher(int line, const char *value)
{



 int val = wpa_parse_cipher(value);
 if (val < 0) {
  wpa_printf(MSG_ERROR, "Line %d: invalid cipher '%s'.",
      line, value);
  return -1;
 }
 if (val == 0) {
  wpa_printf(MSG_ERROR, "Line %d: no cipher values configured.",
      line);
  return -1;
 }
 return val;

}
