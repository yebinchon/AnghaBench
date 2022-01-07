
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct ccb_scsiio {int dummy; } ;


 int AP_EXTEND ;
 int AP_FLAG_BYT_BLOK_BLOCKS ;
 int AP_FLAG_TDIR_FROM_DEV ;
 int AP_FLAG_TLEN_FEAT ;
 int AP_FLAG_TLEN_SECT_CNT ;
 int AP_PROTO_DMA ;
 int AP_PROTO_FPDMA ;
 int ATA_RECV_FPDMA_QUEUED ;
 int ATA_RFPDMA_ZAC_MGMT_IN ;
 int ATA_ZAC_MANAGEMENT_IN ;
 int CAM_DIR_IN ;
 int SSD_FULL_SIZE ;
 int scsi_ata_pass (struct ccb_scsiio*,int,void (*) (struct cam_periph*,union ccb*),int ,int,int,int,int,int,int ,int,int ,int ,int,int ,int*,int,int*,size_t,int ,int ,int) ;

int
scsi_ata_zac_mgmt_in(struct ccb_scsiio *csio, uint32_t retries,
       void (*cbfcnp)(struct cam_periph *, union ccb *),
       uint8_t tag_action, int use_ncq,
       uint8_t zm_action, uint64_t zone_id, uint8_t zone_flags,
       uint8_t *data_ptr, uint32_t dxfer_len,
       uint8_t *cdb_storage, size_t cdb_storage_len,
       uint8_t sense_len, uint32_t timeout)
{
 uint8_t command_out, protocol;
 uint16_t features_out, sectors_out;
 uint32_t auxiliary;
 int ata_flags;
 int retval;

 retval = 0;
 ata_flags = AP_FLAG_TDIR_FROM_DEV | AP_FLAG_BYT_BLOK_BLOCKS;

 if (use_ncq == 0) {
  command_out = ATA_ZAC_MANAGEMENT_IN;

  features_out = (zm_action & 0xf) | (zone_flags << 8);
  sectors_out = dxfer_len >> 9;
  protocol = AP_PROTO_DMA;
  ata_flags |= AP_FLAG_TLEN_SECT_CNT;
  auxiliary = 0;
 } else {
  ata_flags |= AP_FLAG_TLEN_FEAT;

  command_out = ATA_RECV_FPDMA_QUEUED;
  sectors_out = ATA_RFPDMA_ZAC_MGMT_IN << 8;
  if (dxfer_len == (65536 * 512)) {
   features_out = 0;
  } else if (dxfer_len <= (65535 * 512)) {
   features_out = ((dxfer_len >> 9) & 0xffff);
  } else {

   retval = 1;
   goto bailout;
  }
  auxiliary = (zm_action & 0xf) | (zone_flags << 8),
  protocol = AP_PROTO_FPDMA;
 }

 protocol |= AP_EXTEND;

 retval = scsi_ata_pass(csio,
     retries,
     cbfcnp,
               CAM_DIR_IN,
     tag_action,
                  protocol,
                   ata_flags,
                  features_out,
                      sectors_out,
             zone_id,
                 command_out,
                0,
             0,
                   auxiliary,
                 0,
                  data_ptr,
                   (dxfer_len >> 9) * 512,
                     cdb_storage,
                         cdb_storage_len,
                          0,
                   SSD_FULL_SIZE,
                 timeout);

bailout:
 return (retval);
}
