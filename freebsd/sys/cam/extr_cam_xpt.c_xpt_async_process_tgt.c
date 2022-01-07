
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ async_code; } ;
struct TYPE_3__ {struct cam_path* path; } ;
union ccb {TYPE_2__ casync; TYPE_1__ ccb_h; } ;
struct cam_path {struct cam_et* target; } ;
struct cam_et {scalar_t__ target_id; int last_reset; } ;


 scalar_t__ AC_SENT_BDR ;
 scalar_t__ CAM_TARGET_WILDCARD ;
 int microtime (int *) ;
 int xpt_async_process_dev ;
 int xptdevicetraverse (struct cam_et*,int *,int ,union ccb*) ;

__attribute__((used)) static int
xpt_async_process_tgt(struct cam_et *target, void *arg)
{
 union ccb *ccb = arg;
 struct cam_path *path = ccb->ccb_h.path;

 if (path->target != target
  && path->target->target_id != CAM_TARGET_WILDCARD
  && target->target_id != CAM_TARGET_WILDCARD)
  return (1);

 if (ccb->casync.async_code == AC_SENT_BDR) {

  microtime(&target->last_reset);
 }

 return (xptdevicetraverse(target, ((void*)0), xpt_async_process_dev, ccb));
}
