
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_params {int wpa_debug_level; } ;
struct wpa_interface {int wpa_debug_level; } ;
struct wpa_global {int dummy; } ;
typedef int params ;
typedef int iface ;


 int MSG_INFO ;
 int memset (struct wpa_params*,int ,int) ;
 int * wpa_supplicant_add_iface (struct wpa_global*,struct wpa_params*,int *) ;
 int wpa_supplicant_deinit (struct wpa_global*) ;
 struct wpa_global* wpa_supplicant_init (struct wpa_params*) ;
 int wpa_supplicant_run (struct wpa_global*) ;

int main(int argc, char *argv[])
{
 struct wpa_interface iface;
 int exitcode = 0;
 struct wpa_params params;
 struct wpa_global *global;

 memset(&params, 0, sizeof(params));
 params.wpa_debug_level = MSG_INFO;

 global = wpa_supplicant_init(&params);
 if (global == ((void*)0))
  return -1;

 memset(&iface, 0, sizeof(iface));


 if (wpa_supplicant_add_iface(global, &iface, ((void*)0)) == ((void*)0))
  exitcode = -1;

 if (exitcode == 0)
  exitcode = wpa_supplicant_run(global);

 wpa_supplicant_deinit(global);

 return exitcode;
}
