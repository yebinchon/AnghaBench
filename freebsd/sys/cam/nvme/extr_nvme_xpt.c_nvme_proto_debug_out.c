
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmd; } ;
struct TYPE_4__ {scalar_t__ func_code; int path; } ;
union ccb {TYPE_1__ nvmeio; TYPE_2__ ccb_h; } ;
struct nvme_command {int dummy; } ;
typedef int cdb_str ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_CDB ;
 scalar_t__ XPT_NVME_ADMIN ;
 scalar_t__ XPT_NVME_IO ;
 int nvme_cmd_string (int *,char*,int) ;
 int nvme_op_string (int *,int) ;

__attribute__((used)) static void
nvme_proto_debug_out(union ccb *ccb)
{
 char cdb_str[(sizeof(struct nvme_command) * 3) + 1];

 if (ccb->ccb_h.func_code != XPT_NVME_IO &&
     ccb->ccb_h.func_code != XPT_NVME_ADMIN)
  return;

 CAM_DEBUG(ccb->ccb_h.path,
     CAM_DEBUG_CDB,("%s. NCB: %s\n", nvme_op_string(&ccb->nvmeio.cmd,
  ccb->ccb_h.func_code == XPT_NVME_ADMIN),
  nvme_cmd_string(&ccb->nvmeio.cmd, cdb_str, sizeof(cdb_str))));
}
