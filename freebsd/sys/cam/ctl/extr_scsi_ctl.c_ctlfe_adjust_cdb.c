
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct scsi_rw_6 {int length; int addr; } ;
struct scsi_rw_16 {int length; int addr; } ;
struct scsi_rw_12 {int length; int addr; } ;
struct scsi_rw_10 {int length; int addr; } ;
struct ccb_accept_tio {int dummy; } ;
 int* atio_cdb_ptr (struct ccb_accept_tio*) ;
 int scsi_2btoul (int ) ;
 int scsi_3btoul (int ) ;
 int scsi_4btoul (int ) ;
 int scsi_8btou64 (int ) ;
 int scsi_u64to8b (int,int ) ;
 int scsi_ulto2b (int,int ) ;
 int scsi_ulto3b (int,int ) ;
 int scsi_ulto4b (int,int ) ;

__attribute__((used)) static int
ctlfe_adjust_cdb(struct ccb_accept_tio *atio, uint32_t offset)
{
 uint64_t lba;
 uint32_t num_blocks, nbc;
 uint8_t *cmdbyt = atio_cdb_ptr(atio);

 nbc = offset >> 9;

 switch (cmdbyt[0]) {
 case 132:
 case 128:
 {
  struct scsi_rw_6 *cdb = (struct scsi_rw_6 *)cmdbyt;
  lba = scsi_3btoul(cdb->addr);
  lba &= 0x1fffff;
  num_blocks = cdb->length;
  if (num_blocks == 0)
   num_blocks = 256;
  lba += nbc;
  num_blocks -= nbc;
  scsi_ulto3b(lba, cdb->addr);
  cdb->length = num_blocks;
  break;
 }
 case 135:
 case 131:
 {
  struct scsi_rw_10 *cdb = (struct scsi_rw_10 *)cmdbyt;
  lba = scsi_4btoul(cdb->addr);
  num_blocks = scsi_2btoul(cdb->length);
  lba += nbc;
  num_blocks -= nbc;
  scsi_ulto4b(lba, cdb->addr);
  scsi_ulto2b(num_blocks, cdb->length);
  break;
 }
 case 134:
 case 130:
 {
  struct scsi_rw_12 *cdb = (struct scsi_rw_12 *)cmdbyt;
  lba = scsi_4btoul(cdb->addr);
  num_blocks = scsi_4btoul(cdb->length);
  lba += nbc;
  num_blocks -= nbc;
  scsi_ulto4b(lba, cdb->addr);
  scsi_ulto4b(num_blocks, cdb->length);
  break;
 }
 case 133:
 case 129:
 {
  struct scsi_rw_16 *cdb = (struct scsi_rw_16 *)cmdbyt;
  lba = scsi_8btou64(cdb->addr);
  num_blocks = scsi_4btoul(cdb->length);
  lba += nbc;
  num_blocks -= nbc;
  scsi_u64to8b(lba, cdb->addr);
  scsi_ulto4b(num_blocks, cdb->length);
  break;
 }
 default:
  return -1;
 }
 return (0);
}
