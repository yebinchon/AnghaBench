
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cmd; } ;
struct TYPE_3__ {scalar_t__ func_code; int path; } ;
union ccb {TYPE_2__ ataio; TYPE_1__ ccb_h; } ;
struct ata_cmd {int dummy; } ;
typedef int cdb_str ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_CDB ;
 scalar_t__ XPT_ATA_IO ;
 int ata_cmd_string (int *,char*,int) ;
 int ata_op_string (int *) ;

__attribute__((used)) static void
ata_proto_debug_out(union ccb *ccb)
{
 char cdb_str[(sizeof(struct ata_cmd) * 3) + 1];

 if (ccb->ccb_h.func_code != XPT_ATA_IO)
  return;

 CAM_DEBUG(ccb->ccb_h.path,
     CAM_DEBUG_CDB,("%s. ACB: %s\n", ata_op_string(&ccb->ataio.cmd),
  ata_cmd_string(&ccb->ataio.cmd, cdb_str, sizeof(cdb_str))));
}
