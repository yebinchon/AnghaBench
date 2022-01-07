
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int task_status; } ;
struct TYPE_7__ {int flags; int nexus; } ;
union ctl_io {TYPE_4__ taskio; TYPE_3__ io_hdr; } ;
struct TYPE_6__ {int * serializing_sc; int * original_sc; int msg_type; int nexus; } ;
struct TYPE_5__ {int task_action; } ;
union ctl_ha_msg {TYPE_2__ hdr; TYPE_1__ task; } ;
typedef int uint32_t ;
struct ctl_softc {int dummy; } ;


 int CTL_FLAG_FROM_OTHER_SC ;
 int CTL_HA_CHAN_CTL ;
 int CTL_MSG_MANAGE_TASKS ;
 struct ctl_softc* CTL_SOFTC (union ctl_io*) ;
 int CTL_TASK_FUNCTION_COMPLETE ;
 int CTL_TASK_I_T_NEXUS_RESET ;
 int CTL_UA_I_T_NEXUS_LOSS ;
 int M_WAITOK ;
 int ctl_get_initindex (int *) ;
 int ctl_ha_msg_send (int ,union ctl_ha_msg*,int,int ) ;
 int ctl_i_t_nexus_loss (struct ctl_softc*,int ,int ) ;

__attribute__((used)) static int
ctl_i_t_nexus_reset(union ctl_io *io)
{
 struct ctl_softc *softc = CTL_SOFTC(io);
 uint32_t initidx;

 if (!(io->io_hdr.flags & CTL_FLAG_FROM_OTHER_SC)) {
  union ctl_ha_msg msg_info;

  msg_info.hdr.nexus = io->io_hdr.nexus;
  msg_info.task.task_action = CTL_TASK_I_T_NEXUS_RESET;
  msg_info.hdr.msg_type = CTL_MSG_MANAGE_TASKS;
  msg_info.hdr.original_sc = ((void*)0);
  msg_info.hdr.serializing_sc = ((void*)0);
  ctl_ha_msg_send(CTL_HA_CHAN_CTL, &msg_info,
      sizeof(msg_info.task), M_WAITOK);
 }

 initidx = ctl_get_initindex(&io->io_hdr.nexus);
 ctl_i_t_nexus_loss(softc, initidx, CTL_UA_I_T_NEXUS_LOSS);
 io->taskio.task_status = CTL_TASK_FUNCTION_COMPLETE;
 return (0);
}
