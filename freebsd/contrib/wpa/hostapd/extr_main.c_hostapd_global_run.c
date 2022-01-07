
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hapd_interfaces {size_t count; TYPE_3__** iface; } ;
struct TYPE_6__ {size_t num_bss; TYPE_2__** bss; } ;
struct TYPE_5__ {TYPE_1__* conf; } ;
struct TYPE_4__ {scalar_t__ tnc; } ;


 int MSG_ERROR ;
 int eloop_run () ;
 scalar_t__ eloop_sock_requeue () ;
 int errno ;
 scalar_t__ os_daemonize (char const*) ;
 int strerror (int ) ;
 scalar_t__ tncs_global_init () ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int hostapd_global_run(struct hapd_interfaces *ifaces, int daemonize,
         const char *pid_file)
{
 if (daemonize) {
  if (os_daemonize(pid_file)) {
   wpa_printf(MSG_ERROR, "daemon: %s", strerror(errno));
   return -1;
  }
  if (eloop_sock_requeue()) {
   wpa_printf(MSG_ERROR, "eloop_sock_requeue: %s",
       strerror(errno));
   return -1;
  }
 }

 eloop_run();

 return 0;
}
