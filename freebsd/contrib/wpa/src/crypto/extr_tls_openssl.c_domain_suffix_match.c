
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;


 int MSG_DEBUG ;
 scalar_t__ os_strncasecmp (char const*,char const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int domain_suffix_match(const u8 *val, size_t len, const char *match,
          size_t match_len, int full)
{
 size_t i;


 for (i = 0; i < len; i++) {
  if (val[i] == '\0') {
   wpa_printf(MSG_DEBUG, "TLS: Embedded null in a string - reject");
   return 0;
  }
 }

 if (match_len > len || (full && match_len != len))
  return 0;

 if (os_strncasecmp((const char *) val + len - match_len, match,
      match_len) != 0)
  return 0;

 if (match_len == len)
  return 1;

 if (val[len - match_len - 1] == '.')
  return 1;

 wpa_printf(MSG_DEBUG, "TLS: Reject due to incomplete label match");
 return 0;
}
