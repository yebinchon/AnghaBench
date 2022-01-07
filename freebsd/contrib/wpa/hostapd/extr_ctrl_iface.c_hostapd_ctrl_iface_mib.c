
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int radius_srv; } ;


 scalar_t__ os_strcmp (char const*,char*) ;
 int radius_server_get_mib (int ,char*,int) ;

__attribute__((used)) static int hostapd_ctrl_iface_mib(struct hostapd_data *hapd, char *reply,
      int reply_size, const char *param)
{






 return -1;
}
