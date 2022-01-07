
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ func_code; TYPE_2__* path; } ;
union ccb {int csio; TYPE_1__ ccb_h; } ;
struct cam_ed {int inq_data; } ;
typedef int cdb_str ;
struct TYPE_4__ {struct cam_ed* device; } ;


 int CAM_DEBUG (TYPE_2__*,int ,char*) ;
 int CAM_DEBUG_CDB ;
 int SCSI_MAX_CDBLEN ;
 scalar_t__ XPT_SCSI_IO ;
 int scsi_cdb_string (int *,char*,int) ;
 int scsi_op_desc (int ,int *) ;
 int * scsiio_cdb_ptr (int *) ;

__attribute__((used)) static void
scsi_proto_debug_out(union ccb *ccb)
{
 char cdb_str[(SCSI_MAX_CDBLEN * 3) + 1];
 struct cam_ed *device;

 if (ccb->ccb_h.func_code != XPT_SCSI_IO)
  return;

 device = ccb->ccb_h.path->device;
 CAM_DEBUG(ccb->ccb_h.path,
     CAM_DEBUG_CDB,("%s. CDB: %s\n",
  scsi_op_desc(scsiio_cdb_ptr(&ccb->csio)[0], &device->inq_data),
  scsi_cdb_string(scsiio_cdb_ptr(&ccb->csio), cdb_str, sizeof(cdb_str))));
}
