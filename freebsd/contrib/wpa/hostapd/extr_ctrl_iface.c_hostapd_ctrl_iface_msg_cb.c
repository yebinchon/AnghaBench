
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dummy; } ;
typedef enum wpa_msg_type { ____Placeholder_wpa_msg_type } wpa_msg_type ;


 int hostapd_ctrl_iface_send (struct hostapd_data*,int,int,char const*,size_t) ;

__attribute__((used)) static void hostapd_ctrl_iface_msg_cb(void *ctx, int level,
          enum wpa_msg_type type,
          const char *txt, size_t len)
{
 struct hostapd_data *hapd = ctx;
 if (hapd == ((void*)0))
  return;
 hostapd_ctrl_iface_send(hapd, level, type, txt, len);
}
