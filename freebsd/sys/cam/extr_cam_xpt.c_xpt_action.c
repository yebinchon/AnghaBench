
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_5__* path; int status; int func_code; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct TYPE_10__ {TYPE_3__* bus; } ;
struct TYPE_9__ {TYPE_2__* ops; } ;
struct TYPE_8__ {TYPE_4__* xport; } ;
struct TYPE_7__ {int (* action ) (union ccb*) ;} ;


 int CAM_DEBUG (TYPE_5__*,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_REQ_INPROG ;
 int stub1 (union ccb*) ;
 int xpt_action_name (int ) ;

void
xpt_action(union ccb *start_ccb)
{

 CAM_DEBUG(start_ccb->ccb_h.path, CAM_DEBUG_TRACE,
     ("xpt_action: func %#x %s\n", start_ccb->ccb_h.func_code,
  xpt_action_name(start_ccb->ccb_h.func_code)));

 start_ccb->ccb_h.status = CAM_REQ_INPROG;
 (*(start_ccb->ccb_h.path->bus->xport->ops->action))(start_ccb);
}
