
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ctl_io {int scsiio; } ;
struct scsi_unmap_desc {int length; int lba; } ;
struct ctl_ptr_len_flags {int flags; int len; scalar_t__ ptr; } ;
struct ctl_be_lun {int dummy; } ;


 scalar_t__ ARGS (union ctl_io*) ;
 struct ctl_be_lun* CTL_BACKEND_LUN (union ctl_io*) ;
 int SU_ANCHOR ;
 int ctl_backend_ramdisk_delete (struct ctl_be_lun*,int ,int ,int) ;
 int ctl_config_write_done (union ctl_io*) ;
 int ctl_set_invalid_field (int *,int ,int ,int ,int ,int ) ;
 int ctl_set_success (int *) ;
 int scsi_4btoul (int ) ;
 int scsi_8btou64 (int ) ;

__attribute__((used)) static void
ctl_backend_ramdisk_unmap(union ctl_io *io)
{
 struct ctl_be_lun *cbe_lun = CTL_BACKEND_LUN(io);
 struct ctl_ptr_len_flags *ptrlen = (struct ctl_ptr_len_flags *)ARGS(io);
 struct scsi_unmap_desc *buf, *end;

 if ((ptrlen->flags & ~SU_ANCHOR) != 0) {
  ctl_set_invalid_field(&io->scsiio,
                        0,
                      0,
                    0,
                        0,
                  0);
  ctl_config_write_done(io);
  return;
 }

 buf = (struct scsi_unmap_desc *)ptrlen->ptr;
 end = buf + ptrlen->len / sizeof(*buf);
 for (; buf < end; buf++) {
  ctl_backend_ramdisk_delete(cbe_lun,
      scsi_8btou64(buf->lba), scsi_4btoul(buf->length),
      (ptrlen->flags & SU_ANCHOR) != 0);
 }

 ctl_set_success(&io->scsiio);
 ctl_config_write_done(io);
}
