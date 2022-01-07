
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hostapd_data {int dummy; } ;
struct anqp_query_info {int dummy; } ;


 int MSG_DEBUG ;
 int WPA_GET_LE16 (int const*) ;
 int rx_anqp_query_list_id (struct hostapd_data*,int ,struct anqp_query_info*) ;
 int wpa_printf (int ,char*,unsigned int) ;

__attribute__((used)) static void rx_anqp_query_list(struct hostapd_data *hapd,
          const u8 *pos, const u8 *end,
          struct anqp_query_info *qi)
{
 wpa_printf(MSG_DEBUG, "ANQP: %u Info IDs requested in Query list",
     (unsigned int) (end - pos) / 2);

 while (end - pos >= 2) {
  rx_anqp_query_list_id(hapd, WPA_GET_LE16(pos), qi);
  pos += 2;
 }
}
