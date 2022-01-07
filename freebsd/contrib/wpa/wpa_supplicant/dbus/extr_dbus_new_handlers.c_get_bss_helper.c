
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_bss {int dummy; } ;
struct bss_handler_args {int id; int wpa_s; } ;
typedef int DBusError ;


 int DBUS_ERROR_FAILED ;
 int MSG_ERROR ;
 int dbus_set_error (int *,int ,char*,char const*,int ) ;
 struct wpa_bss* wpa_bss_get_id (int ,int ) ;
 int wpa_printf (int ,char*,char const*,int ) ;

__attribute__((used)) static struct wpa_bss * get_bss_helper(struct bss_handler_args *args,
           DBusError *error, const char *func_name)
{
 struct wpa_bss *res = wpa_bss_get_id(args->wpa_s, args->id);

 if (!res) {
  wpa_printf(MSG_ERROR, "%s[dbus]: no bss with id %d found",
      func_name, args->id);
  dbus_set_error(error, DBUS_ERROR_FAILED,
          "%s: BSS %d not found",
          func_name, args->id);
 }

 return res;
}
