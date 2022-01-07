
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_scan_results {size_t num; int ie_len; int beacon_ie_len; struct wpa_scan_results** res; } ;
typedef struct wpa_scan_results u8 ;
struct wpa_scan_res {size_t num; int ie_len; int beacon_ie_len; struct wpa_scan_res** res; } ;
struct wpa_driver_privsep_data {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int PRIVSEP_CMD_GET_SCAN_RESULTS ;
 struct wpa_scan_results** os_calloc (int,int) ;
 int os_free (struct wpa_scan_results*) ;
 struct wpa_scan_results* os_malloc (size_t) ;
 int os_memcpy (int*,struct wpa_scan_results*,int) ;
 struct wpa_scan_results* os_memdup (struct wpa_scan_results*,int) ;
 struct wpa_scan_results* os_zalloc (int) ;
 int wpa_printf (int ,char*,int,...) ;
 int wpa_priv_cmd (struct wpa_driver_privsep_data*,int ,int *,int ,struct wpa_scan_results*,size_t*) ;

__attribute__((used)) static struct wpa_scan_results *
wpa_driver_privsep_get_scan_results2(void *priv)
{
 struct wpa_driver_privsep_data *drv = priv;
 int res, num;
 u8 *buf, *pos, *end;
 size_t reply_len = 60000;
 struct wpa_scan_results *results;
 struct wpa_scan_res *r;

 buf = os_malloc(reply_len);
 if (buf == ((void*)0))
  return ((void*)0);
 res = wpa_priv_cmd(drv, PRIVSEP_CMD_GET_SCAN_RESULTS,
      ((void*)0), 0, buf, &reply_len);
 if (res < 0) {
  os_free(buf);
  return ((void*)0);
 }

 wpa_printf(MSG_DEBUG, "privsep: Received %lu bytes of scan results",
     (unsigned long) reply_len);
 if (reply_len < sizeof(int)) {
  wpa_printf(MSG_DEBUG, "privsep: Invalid scan result len %lu",
      (unsigned long) reply_len);
  os_free(buf);
  return ((void*)0);
 }

 pos = buf;
 end = buf + reply_len;
 os_memcpy(&num, pos, sizeof(int));
 if (num < 0 || num > 1000) {
  os_free(buf);
  return ((void*)0);
 }
 pos += sizeof(int);

 results = os_zalloc(sizeof(*results));
 if (results == ((void*)0)) {
  os_free(buf);
  return ((void*)0);
 }

 results->res = os_calloc(num, sizeof(struct wpa_scan_res *));
 if (results->res == ((void*)0)) {
  os_free(results);
  os_free(buf);
  return ((void*)0);
 }

 while (results->num < (size_t) num && end - pos > (int) sizeof(int)) {
  int len;
  os_memcpy(&len, pos, sizeof(int));
  pos += sizeof(int);
  if (len < 0 || len > 10000 || len > end - pos)
   break;

  r = os_memdup(pos, len);
  if (r == ((void*)0))
   break;
  pos += len;
  if (sizeof(*r) + r->ie_len + r->beacon_ie_len > (size_t) len) {
   wpa_printf(MSG_ERROR,
       "privsep: Invalid scan result len (%d + %d + %d > %d)",
       (int) sizeof(*r), (int) r->ie_len,
       (int) r->beacon_ie_len, len);
   os_free(r);
   break;
  }

  results->res[results->num++] = r;
 }

 os_free(buf);
 return results;
}
