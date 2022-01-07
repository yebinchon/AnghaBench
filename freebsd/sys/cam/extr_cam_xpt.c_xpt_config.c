
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int boot_delay; int boot_callout; int xpt_taskq; } ;


 int CAM_DEBUG_BUS ;
 int CAM_DEBUG_LUN ;
 scalar_t__ CAM_DEBUG_NONE ;
 int CAM_DEBUG_TARGET ;
 scalar_t__ CAM_REQ_CMP ;
 int PRIBIO ;
 int SBT_1MS ;
 int callout_init (int *,int) ;
 int callout_reset_sbt (int *,int,int ,int ,int *,int ) ;
 scalar_t__ cam_dflags ;
 int * cam_dpath ;
 int cam_proc ;
 scalar_t__ kproc_kthread_add (int ,int *,int *,int *,int ,int ,char*,char*) ;
 int periphdriver_init (int) ;
 int printf (char*,...) ;
 scalar_t__ taskqueue_start_threads (int *,int,int ,char*) ;
 int xpt_boot_delay ;
 scalar_t__ xpt_create_path (int **,int *,int,int,int) ;
 int xpt_hold_boot () ;
 int xpt_scanner_thread ;
 TYPE_1__ xsoftc ;

__attribute__((used)) static void
xpt_config(void *arg)
{



 if (taskqueue_start_threads(&xsoftc.xpt_taskq, 1, PRIBIO, "CAM taskq"))
  printf("xpt_config: failed to create taskqueue thread.\n");


 if (cam_dflags != CAM_DEBUG_NONE) {
  if (xpt_create_path(&cam_dpath, ((void*)0),
        CAM_DEBUG_BUS, CAM_DEBUG_TARGET,
        CAM_DEBUG_LUN) != CAM_REQ_CMP) {
   printf("xpt_config: xpt_create_path() failed for debug"
          " target %d:%d:%d, debugging disabled\n",
          CAM_DEBUG_BUS, CAM_DEBUG_TARGET, CAM_DEBUG_LUN);
   cam_dflags = CAM_DEBUG_NONE;
  }
 } else
  cam_dpath = ((void*)0);

 periphdriver_init(1);
 xpt_hold_boot();
 callout_init(&xsoftc.boot_callout, 1);
 callout_reset_sbt(&xsoftc.boot_callout, SBT_1MS * xsoftc.boot_delay, 0,
     xpt_boot_delay, ((void*)0), 0);

 if (kproc_kthread_add(xpt_scanner_thread, ((void*)0), &cam_proc, ((void*)0), 0, 0,
     "cam", "scanner")) {
  printf("xpt_config: failed to create rescan thread.\n");
 }
}
