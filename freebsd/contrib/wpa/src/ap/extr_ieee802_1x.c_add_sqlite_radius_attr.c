
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int addr; } ;
struct radius_msg {int dummy; } ;
struct radius_attr_hdr {int dummy; } ;
struct hostapd_radius_attr {int val; int type; } ;
struct hostapd_data {int rad_attr_db; } ;
typedef int sqlite3_stmt ;
typedef int addrtxt ;


 int ETH_ALEN ;
 int MAC2STR (int ) ;
 int MACSTR ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 scalar_t__ SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQLITE_STATIC ;
 int hostapd_config_free_radius_attr (struct hostapd_radius_attr*) ;
 struct hostapd_radius_attr* hostapd_parse_radius_attr (char const*) ;
 int os_snprintf (char*,int,int ,int ) ;
 int os_strlen (char*) ;
 struct radius_attr_hdr* radius_msg_add_attr (struct radius_msg*,int ,int ,int ) ;
 int sqlite3_bind_text (int *,int,char*,int,int ) ;
 int sqlite3_clear_bindings (int *) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;
 int sqlite3_errmsg (int ) ;
 int sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_prepare_v2 (int ,char*,int,int **,int *) ;
 int sqlite3_reset (int *) ;
 scalar_t__ sqlite3_step (int *) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_head (int ) ;
 int wpabuf_len (int ) ;

int add_sqlite_radius_attr(struct hostapd_data *hapd, struct sta_info *sta,
      struct radius_msg *msg, int acct)
{
 return 0;
}
