
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsd_driver_global {int sock; int route; } ;


 int close (int ) ;
 int eloop_unregister_read_sock (int ) ;
 int os_free (struct bsd_driver_global*) ;

__attribute__((used)) static void
bsd_global_deinit(void *priv)
{
 struct bsd_driver_global *global = priv;

 eloop_unregister_read_sock(global->route);
 (void) close(global->route);
 (void) close(global->sock);
 os_free(global);
}
