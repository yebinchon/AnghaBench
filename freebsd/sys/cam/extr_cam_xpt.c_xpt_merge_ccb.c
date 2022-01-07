
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int timeout; int func_code; int retry_count; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct ccb_hdr {int dummy; } ;


 int bcopy (TYPE_1__*,TYPE_1__*,int) ;

void
xpt_merge_ccb(union ccb *master_ccb, union ccb *slave_ccb)
{





 master_ccb->ccb_h.retry_count = slave_ccb->ccb_h.retry_count;
 master_ccb->ccb_h.func_code = slave_ccb->ccb_h.func_code;
 master_ccb->ccb_h.timeout = slave_ccb->ccb_h.timeout;
 master_ccb->ccb_h.flags = slave_ccb->ccb_h.flags;
 bcopy(&(&slave_ccb->ccb_h)[1], &(&master_ccb->ccb_h)[1],
       sizeof(union ccb) - sizeof(struct ccb_hdr));
}
