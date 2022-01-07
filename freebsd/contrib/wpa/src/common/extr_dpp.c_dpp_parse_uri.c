
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_bootstrap_info {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int dpp_bootstrap_info_free (struct dpp_bootstrap_info*) ;
 scalar_t__ dpp_clone_uri (struct dpp_bootstrap_info*,char const*) ;
 scalar_t__ dpp_parse_uri_chan_list (struct dpp_bootstrap_info*,char const*) ;
 scalar_t__ dpp_parse_uri_info (struct dpp_bootstrap_info*,char const*) ;
 scalar_t__ dpp_parse_uri_mac (struct dpp_bootstrap_info*,char const*) ;
 scalar_t__ dpp_parse_uri_pk (struct dpp_bootstrap_info*,char const*) ;
 char* os_strchr (char const*,char) ;
 int os_strlen (char const*) ;
 scalar_t__ os_strncmp (char const*,char*,int) ;
 struct dpp_bootstrap_info* os_zalloc (int) ;
 int wpa_hexdump_ascii (int ,char*,char const*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct dpp_bootstrap_info * dpp_parse_uri(const char *uri)
{
 const char *pos = uri;
 const char *end;
 const char *chan_list = ((void*)0), *mac = ((void*)0), *info = ((void*)0), *pk = ((void*)0);
 struct dpp_bootstrap_info *bi;

 wpa_hexdump_ascii(MSG_DEBUG, "DPP: URI", uri, os_strlen(uri));

 if (os_strncmp(pos, "DPP:", 4) != 0) {
  wpa_printf(MSG_INFO, "DPP: Not a DPP URI");
  return ((void*)0);
 }
 pos += 4;

 for (;;) {
  end = os_strchr(pos, ';');
  if (!end)
   break;

  if (end == pos) {


   pos++;
   continue;
  }

  if (pos[0] == 'C' && pos[1] == ':' && !chan_list)
   chan_list = pos + 2;
  else if (pos[0] == 'M' && pos[1] == ':' && !mac)
   mac = pos + 2;
  else if (pos[0] == 'I' && pos[1] == ':' && !info)
   info = pos + 2;
  else if (pos[0] == 'K' && pos[1] == ':' && !pk)
   pk = pos + 2;
  else
   wpa_hexdump_ascii(MSG_DEBUG,
       "DPP: Ignore unrecognized URI parameter",
       pos, end - pos);
  pos = end + 1;
 }

 if (!pk) {
  wpa_printf(MSG_INFO, "DPP: URI missing public-key");
  return ((void*)0);
 }

 bi = os_zalloc(sizeof(*bi));
 if (!bi)
  return ((void*)0);

 if (dpp_clone_uri(bi, uri) < 0 ||
     dpp_parse_uri_chan_list(bi, chan_list) < 0 ||
     dpp_parse_uri_mac(bi, mac) < 0 ||
     dpp_parse_uri_info(bi, info) < 0 ||
     dpp_parse_uri_pk(bi, pk) < 0) {
  dpp_bootstrap_info_free(bi);
  bi = ((void*)0);
 }

 return bi;
}
