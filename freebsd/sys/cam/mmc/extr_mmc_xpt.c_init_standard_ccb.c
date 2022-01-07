
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timeout; int cbfcnp; scalar_t__ retry_count; int flags; int func_code; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int uint32_t ;


 int CAM_DIR_OUT ;
 int mmcprobe_done ;

__attribute__((used)) static inline void
init_standard_ccb(union ccb *ccb, uint32_t cmd)
{
 ccb->ccb_h.func_code = cmd;
 ccb->ccb_h.flags = CAM_DIR_OUT;
 ccb->ccb_h.retry_count = 0;
 ccb->ccb_h.timeout = 15 * 1000;
 ccb->ccb_h.cbfcnp = mmcprobe_done;
}
