
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct module_env {int dummy; } ;
struct auth_xfer {int notify_received; int notify_has_serial; TYPE_2__* task_transfer; int lock; TYPE_1__* task_nextprobe; int notify_serial; } ;
struct TYPE_4__ {int ixfr_fail; } ;
struct TYPE_3__ {int * worker; } ;


 int auth_chunks_delete (TYPE_2__*) ;
 int lock_basic_unlock (int *) ;
 scalar_t__ xfr_process_chunk_list (struct auth_xfer*,struct module_env*,int*) ;
 scalar_t__ xfr_serial_means_update (struct auth_xfer*,int ) ;
 int xfr_set_timeout (struct auth_xfer*,struct module_env*,int ,int ) ;
 int xfr_start_probe (struct auth_xfer*,struct module_env*,int *) ;
 int xfr_transfer_disown (struct auth_xfer*) ;
 int xfr_transfer_nextmaster (struct auth_xfer*) ;
 int xfr_transfer_nexttarget_or_end (struct auth_xfer*,struct module_env*) ;

__attribute__((used)) static void
process_list_end_transfer(struct auth_xfer* xfr, struct module_env* env)
{
 int ixfr_fail = 0;
 if(xfr_process_chunk_list(xfr, env, &ixfr_fail)) {

  auth_chunks_delete(xfr->task_transfer);


  xfr_transfer_disown(xfr);

  if(xfr->notify_received && (!xfr->notify_has_serial ||
   (xfr->notify_has_serial &&
   xfr_serial_means_update(xfr, xfr->notify_serial)))) {
   uint32_t sr = xfr->notify_serial;
   int has_sr = xfr->notify_has_serial;


   xfr->notify_received = 0;
   xfr->notify_has_serial = 0;
   xfr->notify_serial = 0;
   if(!xfr_start_probe(xfr, env, ((void*)0))) {



    xfr->notify_received = 1;
    xfr->notify_has_serial = has_sr;
    xfr->notify_serial = sr;
    lock_basic_unlock(&xfr->lock);
   }
   return;
  } else {

   if(xfr->task_nextprobe->worker == ((void*)0))
    xfr_set_timeout(xfr, env, 0, 0);
  }
  lock_basic_unlock(&xfr->lock);
  return;
 }


 auth_chunks_delete(xfr->task_transfer);
 if(ixfr_fail) {
  xfr->task_transfer->ixfr_fail = 1;
 } else {
  xfr_transfer_nextmaster(xfr);
 }
 xfr_transfer_nexttarget_or_end(xfr, env);
}
