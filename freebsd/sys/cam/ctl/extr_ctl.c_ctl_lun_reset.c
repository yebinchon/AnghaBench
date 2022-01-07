
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {size_t targ_mapped_lun; } ;
struct TYPE_7__ {int flags; TYPE_5__ nexus; } ;
struct TYPE_6__ {int task_status; } ;
union ctl_io {TYPE_2__ io_hdr; TYPE_1__ taskio; } ;
struct TYPE_9__ {int * serializing_sc; int * original_sc; TYPE_5__ nexus; int msg_type; } ;
struct TYPE_8__ {int task_action; } ;
union ctl_ha_msg {TYPE_4__ hdr; TYPE_3__ task; } ;
typedef size_t uint32_t ;
struct ctl_softc {int ctl_lock; struct ctl_lun** ctl_luns; } ;
struct ctl_lun {int dummy; } ;


 int CTL_FLAG_FROM_OTHER_SC ;
 int CTL_HA_CHAN_CTL ;
 int CTL_MSG_MANAGE_TASKS ;
 struct ctl_softc* CTL_SOFTC (union ctl_io*) ;
 int CTL_TASK_FUNCTION_COMPLETE ;
 int CTL_TASK_LUN_DOES_NOT_EXIST ;
 int CTL_TASK_LUN_RESET ;
 int CTL_UA_LUN_RESET ;
 int M_WAITOK ;
 int ctl_do_lun_reset (struct ctl_lun*,size_t,int ) ;
 size_t ctl_get_initindex (TYPE_5__*) ;
 int ctl_ha_msg_send (int ,union ctl_ha_msg*,int,int ) ;
 size_t ctl_max_luns ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
ctl_lun_reset(union ctl_io *io)
{
 struct ctl_softc *softc = CTL_SOFTC(io);
 struct ctl_lun *lun;
 uint32_t targ_lun, initidx;

 targ_lun = io->io_hdr.nexus.targ_mapped_lun;
 initidx = ctl_get_initindex(&io->io_hdr.nexus);
 mtx_lock(&softc->ctl_lock);
 if (targ_lun >= ctl_max_luns ||
     (lun = softc->ctl_luns[targ_lun]) == ((void*)0)) {
  mtx_unlock(&softc->ctl_lock);
  io->taskio.task_status = CTL_TASK_LUN_DOES_NOT_EXIST;
  return (1);
 }
 ctl_do_lun_reset(lun, initidx, CTL_UA_LUN_RESET);
 mtx_unlock(&softc->ctl_lock);
 io->taskio.task_status = CTL_TASK_FUNCTION_COMPLETE;

 if ((io->io_hdr.flags & CTL_FLAG_FROM_OTHER_SC) == 0) {
  union ctl_ha_msg msg_info;

  msg_info.hdr.msg_type = CTL_MSG_MANAGE_TASKS;
  msg_info.hdr.nexus = io->io_hdr.nexus;
  msg_info.task.task_action = CTL_TASK_LUN_RESET;
  msg_info.hdr.original_sc = ((void*)0);
  msg_info.hdr.serializing_sc = ((void*)0);
  ctl_ha_msg_send(CTL_HA_CHAN_CTL, &msg_info,
      sizeof(msg_info.task), M_WAITOK);
 }
 return (0);
}
