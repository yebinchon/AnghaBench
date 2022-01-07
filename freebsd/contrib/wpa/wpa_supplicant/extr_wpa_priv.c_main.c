
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_priv_interface {struct wpa_priv_interface* next; } ;
struct wpa_priv_global {struct wpa_priv_interface* interfaces; } ;
typedef int global ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int eloop_destroy () ;
 scalar_t__ eloop_init () ;
 int eloop_register_signal_terminate (int ,int *) ;
 int eloop_run () ;
 scalar_t__ eloop_sock_requeue () ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int optind ;
 scalar_t__ os_daemonize (char*) ;
 int os_daemonize_terminate (char*) ;
 int os_free (char*) ;
 int os_memset (struct wpa_priv_global*,int ,int) ;
 int os_program_deinit () ;
 scalar_t__ os_program_init () ;
 char* os_rel2abs_path (char*) ;
 int usage () ;
 int wpa_debug_level ;
 int wpa_printf (int ,char*,...) ;
 int wpa_priv_fd_workaround () ;
 int wpa_priv_interface_deinit (struct wpa_priv_interface*) ;
 struct wpa_priv_interface* wpa_priv_interface_init (struct wpa_priv_global*,char*,char*) ;
 int wpa_priv_terminate ;

int main(int argc, char *argv[])
{
 int c, i;
 int ret = -1;
 char *pid_file = ((void*)0);
 int daemonize = 0;
 char *ctrl_dir = "/var/run/wpa_priv";
 struct wpa_priv_global global;
 struct wpa_priv_interface *iface;

 if (os_program_init())
  return -1;

 wpa_priv_fd_workaround();

 os_memset(&global, 0, sizeof(global));
 global.interfaces = ((void*)0);

 for (;;) {
  c = getopt(argc, argv, "Bc:dP:");
  if (c < 0)
   break;
  switch (c) {
  case 'B':
   daemonize++;
   break;
  case 'c':
   ctrl_dir = optarg;
   break;
  case 'd':
   wpa_debug_level--;
   break;
  case 'P':
   pid_file = os_rel2abs_path(optarg);
   break;
  default:
   usage();
   goto out2;
  }
 }

 if (optind >= argc) {
  usage();
  goto out2;
 }

 wpa_printf(MSG_DEBUG, "wpa_priv control directory: '%s'", ctrl_dir);

 if (eloop_init()) {
  wpa_printf(MSG_ERROR, "Failed to initialize event loop");
  goto out2;
 }

 for (i = optind; i < argc; i++) {
  wpa_printf(MSG_DEBUG, "Adding driver:interface %s", argv[i]);
  iface = wpa_priv_interface_init(&global, ctrl_dir, argv[i]);
  if (iface == ((void*)0))
   goto out;
  iface->next = global.interfaces;
  global.interfaces = iface;
 }

 if (daemonize && os_daemonize(pid_file) && eloop_sock_requeue())
  goto out;

 eloop_register_signal_terminate(wpa_priv_terminate, ((void*)0));
 eloop_run();

 ret = 0;

out:
 iface = global.interfaces;
 while (iface) {
  struct wpa_priv_interface *prev = iface;
  iface = iface->next;
  wpa_priv_interface_deinit(prev);
 }

 eloop_destroy();

out2:
 if (daemonize)
  os_daemonize_terminate(pid_file);
 os_free(pid_file);
 os_program_deinit();

 return ret;
}
