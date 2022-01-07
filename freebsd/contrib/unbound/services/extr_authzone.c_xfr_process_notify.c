
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct module_env {int dummy; } ;
struct auth_xfer {int lock; } ;
struct auth_master {int dummy; } ;


 int lock_basic_unlock (int *) ;
 int xfr_note_notify_serial (struct auth_xfer*,int,int ) ;
 int xfr_serial_means_update (struct auth_xfer*,int ) ;
 int xfr_start_probe (struct auth_xfer*,struct module_env*,struct auth_master*) ;

__attribute__((used)) static void
xfr_process_notify(struct auth_xfer* xfr, struct module_env* env,
 int has_serial, uint32_t serial, struct auth_master* fromhost)
{


 if(has_serial && !xfr_serial_means_update(xfr, serial)) {
  lock_basic_unlock(&xfr->lock);
  return;
 }

 if(!xfr_start_probe(xfr, env, fromhost)) {

  xfr_note_notify_serial(xfr, has_serial, serial);
  lock_basic_unlock(&xfr->lock);
 }

}
