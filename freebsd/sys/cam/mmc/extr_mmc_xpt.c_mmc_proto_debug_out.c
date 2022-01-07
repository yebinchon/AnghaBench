
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ func_code; int path; } ;
union ccb {TYPE_1__ ccb_h; } ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_CDB ;
 scalar_t__ XPT_MMC_IO ;

__attribute__((used)) static void
mmc_proto_debug_out(union ccb *ccb)
{
 if (ccb->ccb_h.func_code != XPT_MMC_IO)
  return;

 CAM_DEBUG(ccb->ccb_h.path,
     CAM_DEBUG_CDB,("mmc_proto_debug_out\n"));
}
