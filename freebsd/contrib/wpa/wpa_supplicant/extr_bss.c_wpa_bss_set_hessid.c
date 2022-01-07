
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_bss {int hessid; } ;


 int ETH_ALEN ;
 int WLAN_EID_INTERWORKING ;
 int os_memcpy (int ,int const*,int ) ;
 int os_memset (int ,int ,int ) ;
 int* wpa_bss_get_ie (struct wpa_bss*,int ) ;

__attribute__((used)) static void wpa_bss_set_hessid(struct wpa_bss *bss)
{
}
