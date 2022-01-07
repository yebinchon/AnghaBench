
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ccb {int csio; } ;
typedef int u_int8_t ;
typedef int u_int64_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct cam_device {int dummy; } ;


 int AP_FLAG_TDIR_FROM_DEV ;
 int AP_FLAG_TDIR_TO_DEV ;
 int AP_FLAG_TLEN_NO_DATA ;
 int CAM_DIR_OUT ;
 int CCB_CLEAR_ALL_EXCEPT_HDR (int *) ;
 int SSD_FULL_SIZE ;
 int scsi_ata_pass_16 (int *,int,int *,int,int ,int ,int ,int ,int ,int ,int ,int ,int *,int ,int ,int) ;
 int scsi_cam_pass_16_send (struct cam_device*,union ccb*) ;

__attribute__((used)) static int
ata_do_pass_16(struct cam_device *device, union ccb *ccb, int retries,
        u_int32_t flags, u_int8_t protocol, u_int8_t ata_flags,
        u_int8_t tag_action, u_int8_t command, u_int16_t features,
        u_int64_t lba, u_int16_t sector_count, u_int8_t *data_ptr,
        u_int16_t dxfer_len, int timeout)
{
 if (data_ptr != ((void*)0)) {
  if (flags & CAM_DIR_OUT)
   ata_flags |= AP_FLAG_TDIR_TO_DEV;
  else
   ata_flags |= AP_FLAG_TDIR_FROM_DEV;
 } else {
  ata_flags |= AP_FLAG_TLEN_NO_DATA;
 }

 CCB_CLEAR_ALL_EXCEPT_HDR(&ccb->csio);

 scsi_ata_pass_16(&ccb->csio,
    retries,
    ((void*)0),
    flags,
    tag_action,
    protocol,
    ata_flags,
    features,
    sector_count,
    lba,
    command,
               0,
    data_ptr,
    dxfer_len,
                 SSD_FULL_SIZE,
    timeout);

 return scsi_cam_pass_16_send(device, ccb);
}
