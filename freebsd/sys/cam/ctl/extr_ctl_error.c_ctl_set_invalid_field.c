
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ctl_scsiio {int dummy; } ;
typedef int sks ;


 int SSD_BITPTR_VALID ;
 int SSD_ELEM_NONE ;
 int SSD_ELEM_SKIP ;
 int SSD_ELEM_SKS ;
 int SSD_FIELDPTR_CMD ;
 int SSD_KEY_ILLEGAL_REQUEST ;
 int SSD_SCS_VALID ;
 int ctl_set_sense (struct ctl_scsiio*,int,int ,int,int,int ,int,int*,int ) ;
 int scsi_ulto2b (int,int*) ;

void
ctl_set_invalid_field(struct ctl_scsiio *ctsio, int sks_valid, int command,
        int field, int bit_valid, int bit)
{
 uint8_t sks[3];
 int asc;

 if (command != 0) {

  asc = 0x24;
 } else {

  asc = 0x26;
 }

 if (sks_valid) {
  sks[0] = SSD_SCS_VALID;
  if (command)
   sks[0] |= SSD_FIELDPTR_CMD;
  scsi_ulto2b(field, &sks[1]);

  if (bit_valid)
   sks[0] |= SSD_BITPTR_VALID | bit;
 }

 ctl_set_sense(ctsio,
                          1,
                      SSD_KEY_ILLEGAL_REQUEST,
        asc,
                 0x00,
                 (sks_valid != 0) ? SSD_ELEM_SKS : SSD_ELEM_SKIP,
                 sizeof(sks),
                 sks,
        SSD_ELEM_NONE);
}
