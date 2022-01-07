
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_params {int dbus_ctrl_interface; int match_iface_count; struct wpa_params* pid_file; struct wpa_params* match_ifaces; int * ctrl_interface; int * ifname; int * confname; int wait_for_monitor; int wpa_debug_timestamp; int wpa_debug_tracing; int wpa_debug_syslog; int wpa_debug_level; void* driver_param; void* override_ctrl_interface; void* override_driver; void* conf_p2p_dev; int wpa_debug_show_keys; void* confanother; void* ctrl_interface_group; void* wpa_debug_file_path; void* entropy_file; void* driver; int daemonize; void* bridge_ifname; } ;
struct wpa_interface {int dbus_ctrl_interface; int match_iface_count; struct wpa_interface* pid_file; struct wpa_interface* match_ifaces; int * ctrl_interface; int * ifname; int * confname; int wait_for_monitor; int wpa_debug_timestamp; int wpa_debug_tracing; int wpa_debug_syslog; int wpa_debug_level; void* driver_param; void* override_ctrl_interface; void* override_driver; void* conf_p2p_dev; int wpa_debug_show_keys; void* confanother; void* ctrl_interface_group; void* wpa_debug_file_path; void* entropy_file; void* driver; int daemonize; void* bridge_ifname; } ;
struct wpa_global {int dummy; } ;
typedef int params ;


 int MSG_ERROR ;
 int MSG_INFO ;
 int MSG_WARNING ;
 int fst_ctrl_cli ;
 int fst_global_add_ctrl (int ) ;
 int fst_global_deinit () ;
 scalar_t__ fst_global_init () ;
 int getopt (int,char**,char*) ;
 int license () ;
 void* optarg ;
 int os_free (struct wpa_params*) ;
 int os_memset (struct wpa_params*,int ,int) ;
 int os_program_deinit () ;
 scalar_t__ os_program_init () ;
 struct wpa_params* os_realloc_array (struct wpa_params*,int,int) ;
 struct wpa_params* os_rel2abs_path (void*) ;
 struct wpa_params* os_zalloc (int) ;
 int printf (char*,...) ;
 int usage () ;
 int wpa_printf (int ,char*) ;
 struct wpa_supplicant* wpa_supplicant_add_iface (struct wpa_global*,struct wpa_params*,int *) ;
 int wpa_supplicant_deinit (struct wpa_global*) ;
 int wpa_supplicant_fd_workaround (int) ;
 struct wpa_global* wpa_supplicant_init (struct wpa_params*) ;
 int wpa_supplicant_init_match (struct wpa_global*) ;
 int wpa_supplicant_run (struct wpa_global*) ;
 char* wpa_supplicant_version ;

int main(int argc, char *argv[])
{
 int c, i;
 struct wpa_interface *ifaces, *iface;
 int iface_count, exitcode = -1;
 struct wpa_params params;
 struct wpa_global *global;

 if (os_program_init())
  return -1;

 os_memset(&params, 0, sizeof(params));
 params.wpa_debug_level = MSG_INFO;

 iface = ifaces = os_zalloc(sizeof(struct wpa_interface));
 if (ifaces == ((void*)0))
  return -1;
 iface_count = 1;

 wpa_supplicant_fd_workaround(1);






 for (;;) {
  c = getopt(argc, argv,
      "b:Bc:C:D:de:f:g:G:hi:I:KLMm:No:O:p:P:qsTtuvW");
  if (c < 0)
   break;
  switch (c) {
  case 'b':
   iface->bridge_ifname = optarg;
   break;
  case 'B':
   params.daemonize++;
   break;
  case 'c':
   iface->confname = optarg;
   break;
  case 'C':
   iface->ctrl_interface = optarg;
   break;
  case 'D':
   iface->driver = optarg;
   break;
  case 'd':






   params.wpa_debug_level--;
   break;

  case 'e':
   params.entropy_file = optarg;
   break;





  case 'g':
   params.ctrl_interface = optarg;
   break;
  case 'G':
   params.ctrl_interface_group = optarg;
   break;
  case 'h':
   usage();
   exitcode = 0;
   goto out;
  case 'i':
   iface->ifname = optarg;
   break;
  case 'I':
   iface->confanother = optarg;
   break;
  case 'K':
   params.wpa_debug_show_keys++;
   break;
  case 'L':
   license();
   exitcode = 0;
   goto out;





  case 'o':
   params.override_driver = optarg;
   break;
  case 'O':
   params.override_ctrl_interface = optarg;
   break;
  case 'p':
   iface->driver_param = optarg;
   break;
  case 'P':
   os_free(params.pid_file);
   params.pid_file = os_rel2abs_path(optarg);
   break;
  case 'q':
   params.wpa_debug_level++;
   break;
  case 't':
   params.wpa_debug_timestamp++;
   break;





  case 'v':
   printf("%s\n", wpa_supplicant_version);
   exitcode = 0;
   goto out;
  case 'W':
   params.wait_for_monitor++;
   break;
  case 'N':
   iface_count++;
   iface = os_realloc_array(ifaces, iface_count,
       sizeof(struct wpa_interface));
   if (iface == ((void*)0))
    goto out;
   ifaces = iface;
   iface = &ifaces[iface_count - 1];
   os_memset(iface, 0, sizeof(*iface));
   break;
  default:
   usage();
   exitcode = 0;
   goto out;
  }
 }

 exitcode = 0;
 global = wpa_supplicant_init(&params);
 if (global == ((void*)0)) {
  wpa_printf(MSG_ERROR, "Failed to initialize wpa_supplicant");
  exitcode = -1;
  goto out;
 } else {
  wpa_printf(MSG_INFO, "Successfully initialized "
      "wpa_supplicant");
 }

 if (fst_global_init()) {
  wpa_printf(MSG_ERROR, "Failed to initialize FST");
  exitcode = -1;
  goto out;
 }






 for (i = 0; exitcode == 0 && i < iface_count; i++) {
  struct wpa_supplicant *wpa_s;

  if ((ifaces[i].confname == ((void*)0) &&
       ifaces[i].ctrl_interface == ((void*)0)) ||
      ifaces[i].ifname == ((void*)0)) {
   if (iface_count == 1 && (params.ctrl_interface ||



       params.dbus_ctrl_interface))
    break;
   usage();
   exitcode = -1;
   break;
  }
  wpa_s = wpa_supplicant_add_iface(global, &ifaces[i], ((void*)0));
  if (wpa_s == ((void*)0)) {
   exitcode = -1;
   break;
  }
 }






 if (exitcode == 0)
  exitcode = wpa_supplicant_run(global);

 wpa_supplicant_deinit(global);

 fst_global_deinit();

out:
 wpa_supplicant_fd_workaround(0);
 os_free(ifaces);



 os_free(params.pid_file);

 os_program_deinit();

 return exitcode;
}
