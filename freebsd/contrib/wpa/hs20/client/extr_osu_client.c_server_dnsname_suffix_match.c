
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hs20_osu_client {size_t server_dnsname_count; char** server_dnsname; } ;


 int MSG_INFO ;
 size_t os_strlen (char const*) ;
 scalar_t__ os_strncasecmp (char const*,char const*,size_t) ;
 int wpa_printf (int ,char*,char*) ;

__attribute__((used)) static int server_dnsname_suffix_match(struct hs20_osu_client *ctx,
           const char *fqdn)
{
 size_t match_len, len, i;
 const char *val;

 match_len = os_strlen(fqdn);

 for (i = 0; i < ctx->server_dnsname_count; i++) {
  wpa_printf(MSG_INFO,
      "Checking suffix match against server dNSName %s",
      ctx->server_dnsname[i]);
  val = ctx->server_dnsname[i];
  len = os_strlen(val);

  if (match_len > len)
   continue;

  if (os_strncasecmp(val + len - match_len, fqdn, match_len) != 0)
   continue;

  if (match_len == len)
   return 1;

  if (val[len - match_len - 1] == '.')
   return 1;


 }


 return 0;
}
