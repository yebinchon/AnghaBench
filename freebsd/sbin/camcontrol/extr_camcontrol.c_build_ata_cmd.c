
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ cmd; scalar_t__ aux; int ata_flags; } ;
union ccb {int csio; TYPE_2__ ataio; } ;
typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ camcontrol_devtype ;


 int AP_EXTEND ;
 int AP_FLAG_CHK_COND ;
 int AP_PROTO_DMA ;
 int AP_PROTO_FPDMA ;
 int AP_PROTO_MASK ;
 int ATA_FLAG_AUX ;
 scalar_t__ ATA_MAX_28BIT_LBA ;
 int CAM_ATAIO_DMA ;
 int CAM_ATAIO_FPDMA ;
 int CAM_ATAIO_NEEDRESULT ;
 scalar_t__ CC_DT_ATA ;
 int ata_28bit_cmd (TYPE_2__*,int,int ,scalar_t__,int ) ;
 int ata_48bit_cmd (TYPE_2__*,int,int ,scalar_t__,int ) ;
 int cam_fill_ataio (TYPE_2__*,scalar_t__,int *,scalar_t__,int,int*,scalar_t__,scalar_t__) ;
 int scsi_ata_pass (int *,scalar_t__,int *,scalar_t__,int,int,int,int ,int ,scalar_t__,int,int ,int ,scalar_t__,int ,int*,scalar_t__,int*,size_t,int ,int,scalar_t__) ;

int
build_ata_cmd(union ccb *ccb, uint32_t retry_count, uint32_t flags,
    uint8_t tag_action, uint8_t protocol, uint8_t ata_flags, uint16_t features,
    uint16_t sector_count, uint64_t lba, uint8_t command, uint32_t auxiliary,
    uint8_t *data_ptr, uint32_t dxfer_len, uint8_t *cdb_storage,
    size_t cdb_storage_len, uint8_t sense_len, uint32_t timeout,
    int is48bit, camcontrol_devtype devtype)
{
 int retval = 0;

 if (devtype == CC_DT_ATA) {
  cam_fill_ataio(&ccb->ataio,
                  retry_count,
                 ((void*)0),
                flags,
                     tag_action,
                   data_ptr,
                    dxfer_len,
                  timeout);
  if (is48bit || lba > ATA_MAX_28BIT_LBA)
   ata_48bit_cmd(&ccb->ataio, command, features, lba,
       sector_count);
  else
   ata_28bit_cmd(&ccb->ataio, command, features, lba,
       sector_count);

  if (auxiliary != 0) {
   ccb->ataio.ata_flags |= ATA_FLAG_AUX;
   ccb->ataio.aux = auxiliary;
  }

  if (ata_flags & AP_FLAG_CHK_COND)
   ccb->ataio.cmd.flags |= CAM_ATAIO_NEEDRESULT;

  if ((protocol & AP_PROTO_MASK) == AP_PROTO_DMA)
   ccb->ataio.cmd.flags |= CAM_ATAIO_DMA;
  else if ((protocol & AP_PROTO_MASK) == AP_PROTO_FPDMA)
   ccb->ataio.cmd.flags |= CAM_ATAIO_FPDMA;
 } else {
  if (is48bit || lba > ATA_MAX_28BIT_LBA)
   protocol |= AP_EXTEND;

  retval = scsi_ata_pass(&ccb->csio,
                  retry_count,
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
              0,
                    auxiliary,
                  0,
                   data_ptr,
                    dxfer_len,
                      cdb_storage,
                          cdb_storage_len,
                           0,
                    sense_len,
                  timeout);
 }

 return (retval);
}
