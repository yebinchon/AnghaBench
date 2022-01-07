
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tpc_list {int fwd_cscd; int params; int fwd_scsi_status; int fwd_target; int fwd_sense_len; int ctsio; int fwd_sense_data; int * cscd; int curseg; } ;
typedef int sks ;
typedef int csi ;


 int SSD_ELEM_COMMAND ;
 int SSD_ELEM_DESC ;
 int SSD_ELEM_NONE ;
 int SSD_ELEM_SKIP ;
 int SSD_ELEM_SKS ;
 int SSD_FORWARDED_FSDT ;
 int SSD_KEY_COPY_ABORTED ;
 int SSD_SKS_SEGMENT_VALID ;
 int bcopy (int *,int*,int) ;
 int ctl_set_sense (int ,int,int ,int,int,int ,int,int*,int ,int,int*,int ,int,int*,int ) ;
 int scsi_ulto2b (int*,int*) ;
 int scsi_ulto4b (int ,int*) ;

__attribute__((used)) static void
tpc_set_io_error_sense(struct tpc_list *list)
{
 int flen;
 uint8_t csi[4];
 uint8_t sks[3];
 uint8_t fbuf[4 + 64];

 scsi_ulto4b(list->curseg, csi);
 if (list->fwd_cscd <= 0x07ff) {
  sks[0] = SSD_SKS_SEGMENT_VALID;
  scsi_ulto2b((uint8_t *)&list->cscd[list->fwd_cscd] -
      list->params, &sks[1]);
 } else
  sks[0] = 0;
 if (list->fwd_scsi_status) {
  fbuf[0] = 0x0c;
  fbuf[2] = list->fwd_target;
  flen = list->fwd_sense_len;
  if (flen > 64) {
   flen = 64;
   fbuf[2] |= SSD_FORWARDED_FSDT;
  }
  fbuf[1] = 2 + flen;
  fbuf[3] = list->fwd_scsi_status;
  bcopy(&list->fwd_sense_data, &fbuf[4], flen);
  flen += 4;
 } else
  flen = 0;
 ctl_set_sense(list->ctsio, 1,
                   SSD_KEY_COPY_ABORTED,
             0x0d, 0x01,
     SSD_ELEM_COMMAND, sizeof(csi), csi,
     sks[0] ? SSD_ELEM_SKS : SSD_ELEM_SKIP, sizeof(sks), sks,
     flen ? SSD_ELEM_DESC : SSD_ELEM_SKIP, flen, fbuf,
     SSD_ELEM_NONE);
}
