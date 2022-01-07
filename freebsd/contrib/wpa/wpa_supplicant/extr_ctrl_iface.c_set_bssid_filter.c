
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {size_t bssid_filter_count; int * bssid_filter; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 scalar_t__ hwaddr_aton (char*,int *) ;
 int os_free (int *) ;
 int os_memcpy (int *,int *,int) ;
 int * os_realloc_array (int *,size_t,int) ;
 char* os_strchr (char*,char) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;

__attribute__((used)) static int set_bssid_filter(struct wpa_supplicant *wpa_s, char *val)
{
 char *pos;
 u8 addr[ETH_ALEN], *filter = ((void*)0), *n;
 size_t count = 0;

 pos = val;
 while (pos) {
  if (*pos == '\0')
   break;
  if (hwaddr_aton(pos, addr)) {
   os_free(filter);
   return -1;
  }
  n = os_realloc_array(filter, count + 1, ETH_ALEN);
  if (n == ((void*)0)) {
   os_free(filter);
   return -1;
  }
  filter = n;
  os_memcpy(filter + count * ETH_ALEN, addr, ETH_ALEN);
  count++;

  pos = os_strchr(pos, ' ');
  if (pos)
   pos++;
 }

 wpa_hexdump(MSG_DEBUG, "bssid_filter", filter, count * ETH_ALEN);
 os_free(wpa_s->bssid_filter);
 wpa_s->bssid_filter = filter;
 wpa_s->bssid_filter_count = count;

 return 0;
}
