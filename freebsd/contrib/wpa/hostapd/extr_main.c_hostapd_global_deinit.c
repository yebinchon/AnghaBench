
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * drv_priv; } ;
struct TYPE_3__ {int (* global_deinit ) (int ) ;} ;


 int closelog () ;
 int eap_server_unregister_methods () ;
 int eloop_destroy () ;
 TYPE_2__ global ;
 int os_daemonize_terminate (char const*) ;
 int os_free (int *) ;
 int random_deinit () ;
 int stub1 (int ) ;
 int tncs_global_deinit () ;
 TYPE_1__** wpa_drivers ;

__attribute__((used)) static void hostapd_global_deinit(const char *pid_file, int eloop_initialized)
{
 int i;

 for (i = 0; wpa_drivers[i] && global.drv_priv; i++) {
  if (!global.drv_priv[i])
   continue;
  wpa_drivers[i]->global_deinit(global.drv_priv[i]);
 }
 os_free(global.drv_priv);
 global.drv_priv = ((void*)0);





 random_deinit();

 if (eloop_initialized)
  eloop_destroy();


 closelog();


 eap_server_unregister_methods();

 os_daemonize_terminate(pid_file);
}
