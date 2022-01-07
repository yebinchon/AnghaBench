
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_scan_results {struct wpa_scan_res** res; scalar_t__ num; } ;
struct wpa_scan_res {int dummy; } ;
struct nl_msg {int dummy; } ;
struct nl80211_bss_info_arg {int drv; struct wpa_scan_results* res; } ;


 int NL_SKIP ;
 struct wpa_scan_res* nl80211_parse_bss_info (int ,struct nl_msg*) ;
 int os_free (struct wpa_scan_res*) ;
 struct wpa_scan_res** os_realloc_array (struct wpa_scan_res**,scalar_t__,int) ;

__attribute__((used)) static int bss_info_handler(struct nl_msg *msg, void *arg)
{
 struct nl80211_bss_info_arg *_arg = arg;
 struct wpa_scan_results *res = _arg->res;
 struct wpa_scan_res **tmp;
 struct wpa_scan_res *r;

 r = nl80211_parse_bss_info(_arg->drv, msg);
 if (!r)
  return NL_SKIP;

 if (!res) {
  os_free(r);
  return NL_SKIP;
 }
 tmp = os_realloc_array(res->res, res->num + 1,
          sizeof(struct wpa_scan_res *));
 if (tmp == ((void*)0)) {
  os_free(r);
  return NL_SKIP;
 }
 tmp[res->num++] = r;
 res->res = tmp;

 return NL_SKIP;
}
