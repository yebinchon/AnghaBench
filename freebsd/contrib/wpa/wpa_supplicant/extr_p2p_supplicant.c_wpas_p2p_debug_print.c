
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int wpa_msg_global (struct wpa_supplicant*,int,char*,char const*) ;

__attribute__((used)) static void wpas_p2p_debug_print(void *ctx, int level, const char *msg)
{
 struct wpa_supplicant *wpa_s = ctx;
 wpa_msg_global(wpa_s, level, "P2P: %s", msg);
}
