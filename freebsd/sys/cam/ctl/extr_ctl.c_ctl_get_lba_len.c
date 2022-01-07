
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* cdb; } ;
struct TYPE_3__ {scalar_t__ io_type; } ;
union ctl_io {TYPE_2__ scsiio; TYPE_1__ io_hdr; } ;
typedef int uint64_t ;
struct scsi_write_verify_16 {int length; int addr; } ;
struct scsi_write_verify_12 {int length; int addr; } ;
struct scsi_write_verify_10 {int length; int addr; } ;
struct scsi_write_same_16 {int length; int addr; } ;
struct scsi_write_same_10 {int length; int addr; } ;
struct scsi_write_atomic_16 {int length; int addr; } ;
struct scsi_verify_16 {int length; int addr; } ;
struct scsi_verify_12 {int length; int addr; } ;
struct scsi_verify_10 {int length; int addr; } ;
struct scsi_rw_6 {int length; int addr; } ;
struct scsi_rw_16 {int length; int addr; } ;
struct scsi_rw_12 {int length; int addr; } ;
struct scsi_rw_10 {int length; int addr; } ;
struct scsi_get_lba_status {int addr; } ;
struct scsi_compare_and_write {int length; int addr; } ;



 scalar_t__ CTL_IO_SCSI ;





 int UINT32_MAX ;
 int UINT64_MAX ;
 int scsi_2btoul (int ) ;
 int scsi_3btoul (int ) ;
 int scsi_4btoul (int ) ;
 int scsi_8btou64 (int ) ;

__attribute__((used)) static int
ctl_get_lba_len(union ctl_io *io, uint64_t *lba, uint64_t *len)
{
 if (io->io_hdr.io_type != CTL_IO_SCSI)
  return (1);

 switch (io->scsiio.cdb[0]) {
 case 147: {
  struct scsi_compare_and_write *cdb;

  cdb = (struct scsi_compare_and_write *)io->scsiio.cdb;

  *lba = scsi_8btou64(cdb->addr);
  *len = cdb->length;
  break;
 }
 case 143:
 case 134: {
  struct scsi_rw_6 *cdb;

  cdb = (struct scsi_rw_6 *)io->scsiio.cdb;

  *lba = scsi_3btoul(cdb->addr);

  *lba &= 0x1fffff;
  *len = cdb->length;
  break;
 }
 case 146:
 case 137: {
  struct scsi_rw_10 *cdb;

  cdb = (struct scsi_rw_10 *)io->scsiio.cdb;

  *lba = scsi_4btoul(cdb->addr);
  *len = scsi_2btoul(cdb->length);
  break;
 }
 case 130: {
  struct scsi_write_verify_10 *cdb;

  cdb = (struct scsi_write_verify_10 *)io->scsiio.cdb;

  *lba = scsi_4btoul(cdb->addr);
  *len = scsi_2btoul(cdb->length);
  break;
 }
 case 145:
 case 136: {
  struct scsi_rw_12 *cdb;

  cdb = (struct scsi_rw_12 *)io->scsiio.cdb;

  *lba = scsi_4btoul(cdb->addr);
  *len = scsi_4btoul(cdb->length);
  break;
 }
 case 129: {
  struct scsi_write_verify_12 *cdb;

  cdb = (struct scsi_write_verify_12 *)io->scsiio.cdb;

  *lba = scsi_4btoul(cdb->addr);
  *len = scsi_4btoul(cdb->length);
  break;
 }
 case 144:
 case 135: {
  struct scsi_rw_16 *cdb;

  cdb = (struct scsi_rw_16 *)io->scsiio.cdb;

  *lba = scsi_8btou64(cdb->addr);
  *len = scsi_4btoul(cdb->length);
  break;
 }
 case 133: {
  struct scsi_write_atomic_16 *cdb;

  cdb = (struct scsi_write_atomic_16 *)io->scsiio.cdb;

  *lba = scsi_8btou64(cdb->addr);
  *len = scsi_2btoul(cdb->length);
  break;
 }
 case 128: {
  struct scsi_write_verify_16 *cdb;

  cdb = (struct scsi_write_verify_16 *)io->scsiio.cdb;

  *lba = scsi_8btou64(cdb->addr);
  *len = scsi_4btoul(cdb->length);
  break;
 }
 case 132: {
  struct scsi_write_same_10 *cdb;

  cdb = (struct scsi_write_same_10 *)io->scsiio.cdb;

  *lba = scsi_4btoul(cdb->addr);
  *len = scsi_2btoul(cdb->length);
  break;
 }
 case 131: {
  struct scsi_write_same_16 *cdb;

  cdb = (struct scsi_write_same_16 *)io->scsiio.cdb;

  *lba = scsi_8btou64(cdb->addr);
  *len = scsi_4btoul(cdb->length);
  break;
 }
 case 140: {
  struct scsi_verify_10 *cdb;

  cdb = (struct scsi_verify_10 *)io->scsiio.cdb;

  *lba = scsi_4btoul(cdb->addr);
  *len = scsi_2btoul(cdb->length);
  break;
 }
 case 139: {
  struct scsi_verify_12 *cdb;

  cdb = (struct scsi_verify_12 *)io->scsiio.cdb;

  *lba = scsi_4btoul(cdb->addr);
  *len = scsi_4btoul(cdb->length);
  break;
 }
 case 138: {
  struct scsi_verify_16 *cdb;

  cdb = (struct scsi_verify_16 *)io->scsiio.cdb;

  *lba = scsi_8btou64(cdb->addr);
  *len = scsi_4btoul(cdb->length);
  break;
 }
 case 141: {
  *lba = 0;
  *len = UINT64_MAX;
  break;
 }
 case 142: {
  struct scsi_get_lba_status *cdb;

  cdb = (struct scsi_get_lba_status *)io->scsiio.cdb;
  *lba = scsi_8btou64(cdb->addr);
  *len = UINT32_MAX;
  break;
 }
 default:
  return (1);
  break;
 }

 return (0);
}
