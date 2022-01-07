
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;
struct wpa_bss {int dummy; } ;


 int WPS_IE_VENDOR_TYPE ;
 struct wpabuf* wpa_bss_get_vendor_ie_multi (struct wpa_bss const*,int ) ;
 char* wpa_supplicant_wps_ie_txt_buf (struct wpa_supplicant*,char*,char*,struct wpabuf*) ;

__attribute__((used)) static char * wpa_supplicant_wps_ie_txt(struct wpa_supplicant *wpa_s,
     char *pos, char *end,
     const struct wpa_bss *bss)
{





 return pos;

}
