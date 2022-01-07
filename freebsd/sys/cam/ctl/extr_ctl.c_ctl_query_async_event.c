
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int task_status; int task_resp; } ;
struct TYPE_6__ {size_t targ_mapped_lun; } ;
struct TYPE_4__ {TYPE_3__ nexus; } ;
union ctl_io {TYPE_2__ taskio; TYPE_1__ io_hdr; } ;
typedef size_t uint32_t ;
struct ctl_softc {int ctl_lock; struct ctl_lun** ctl_luns; } ;
struct ctl_lun {int lun_lock; } ;
typedef scalar_t__ ctl_ua_type ;


 struct ctl_softc* CTL_SOFTC (union ctl_io*) ;
 int CTL_TASK_FUNCTION_COMPLETE ;
 int CTL_TASK_FUNCTION_SUCCEEDED ;
 int CTL_TASK_LUN_DOES_NOT_EXIST ;
 scalar_t__ CTL_UA_NONE ;
 scalar_t__ ctl_build_qae (struct ctl_lun*,size_t,int ) ;
 size_t ctl_get_initindex (TYPE_3__*) ;
 size_t ctl_max_luns ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
ctl_query_async_event(union ctl_io *io)
{
 struct ctl_softc *softc = CTL_SOFTC(io);
 struct ctl_lun *lun;
 ctl_ua_type ua;
 uint32_t targ_lun, initidx;

 targ_lun = io->io_hdr.nexus.targ_mapped_lun;
 mtx_lock(&softc->ctl_lock);
 if (targ_lun >= ctl_max_luns ||
     (lun = softc->ctl_luns[targ_lun]) == ((void*)0)) {
  mtx_unlock(&softc->ctl_lock);
  io->taskio.task_status = CTL_TASK_LUN_DOES_NOT_EXIST;
  return (1);
 }
 mtx_lock(&lun->lun_lock);
 mtx_unlock(&softc->ctl_lock);
 initidx = ctl_get_initindex(&io->io_hdr.nexus);
 ua = ctl_build_qae(lun, initidx, io->taskio.task_resp);
 mtx_unlock(&lun->lun_lock);
 if (ua != CTL_UA_NONE)
  io->taskio.task_status = CTL_TASK_FUNCTION_SUCCEEDED;
 else
  io->taskio.task_status = CTL_TASK_FUNCTION_COMPLETE;
 return (0);
}
