
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dpp_global {int bootstrap; } ;
struct dpp_bootstrap_info {int id; int list; void* uri; int type; } ;


 int DPP_BOOTSTRAP_PKEX ;
 int DPP_BOOTSTRAP_QR_CODE ;
 int bin_clear_free (int *,size_t) ;
 int dl_list_add (int *,int *) ;
 int dpp_bootstrap_info_free (struct dpp_bootstrap_info*) ;
 char* dpp_keygen (struct dpp_bootstrap_info*,char*,int *,size_t) ;
 int dpp_next_id (struct dpp_global*) ;
 scalar_t__ dpp_parse_uri_chan_list (struct dpp_bootstrap_info*,char*) ;
 scalar_t__ dpp_parse_uri_info (struct dpp_bootstrap_info*,char*) ;
 scalar_t__ dpp_parse_uri_mac (struct dpp_bootstrap_info*,char*) ;
 char* get_param (char const*,char*) ;
 scalar_t__ hexstr2bin (char*,int *,size_t) ;
 int os_free (char*) ;
 void* os_malloc (size_t) ;
 int os_snprintf (void*,size_t,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ;
 int os_strlen (char*) ;
 scalar_t__ os_strstr (char const*,char*) ;
 struct dpp_bootstrap_info* os_zalloc (int) ;
 int str_clear_free (char*) ;

int dpp_bootstrap_gen(struct dpp_global *dpp, const char *cmd)
{
 char *chan = ((void*)0), *mac = ((void*)0), *info = ((void*)0), *pk = ((void*)0), *curve = ((void*)0);
 char *key = ((void*)0);
 u8 *privkey = ((void*)0);
 size_t privkey_len = 0;
 size_t len;
 int ret = -1;
 struct dpp_bootstrap_info *bi;

 if (!dpp)
  return -1;

 bi = os_zalloc(sizeof(*bi));
 if (!bi)
  goto fail;

 if (os_strstr(cmd, "type=qrcode"))
  bi->type = DPP_BOOTSTRAP_QR_CODE;
 else if (os_strstr(cmd, "type=pkex"))
  bi->type = DPP_BOOTSTRAP_PKEX;
 else
  goto fail;

 chan = get_param(cmd, " chan=");
 mac = get_param(cmd, " mac=");
 info = get_param(cmd, " info=");
 curve = get_param(cmd, " curve=");
 key = get_param(cmd, " key=");

 if (key) {
  privkey_len = os_strlen(key) / 2;
  privkey = os_malloc(privkey_len);
  if (!privkey ||
      hexstr2bin(key, privkey, privkey_len) < 0)
   goto fail;
 }

 pk = dpp_keygen(bi, curve, privkey, privkey_len);
 if (!pk)
  goto fail;

 len = 4;
 if (chan) {
  if (dpp_parse_uri_chan_list(bi, chan) < 0)
   goto fail;
  len += 3 + os_strlen(chan);
 }
 if (mac) {
  if (dpp_parse_uri_mac(bi, mac) < 0)
   goto fail;
  len += 3 + os_strlen(mac);
 }
 if (info) {
  if (dpp_parse_uri_info(bi, info) < 0)
   goto fail;
  len += 3 + os_strlen(info);
 }
 len += 4 + os_strlen(pk);
 bi->uri = os_malloc(len + 1);
 if (!bi->uri)
  goto fail;
 os_snprintf(bi->uri, len + 1, "DPP:%s%s%s%s%s%s%s%s%sK:%s;;",
      chan ? "C:" : "", chan ? chan : "", chan ? ";" : "",
      mac ? "M:" : "", mac ? mac : "", mac ? ";" : "",
      info ? "I:" : "", info ? info : "", info ? ";" : "",
      pk);
 bi->id = dpp_next_id(dpp);
 dl_list_add(&dpp->bootstrap, &bi->list);
 ret = bi->id;
 bi = ((void*)0);
fail:
 os_free(curve);
 os_free(pk);
 os_free(chan);
 os_free(mac);
 os_free(info);
 str_clear_free(key);
 bin_clear_free(privkey, privkey_len);
 dpp_bootstrap_info_free(bi);
 return ret;
}
