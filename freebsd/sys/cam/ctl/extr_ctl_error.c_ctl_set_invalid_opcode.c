
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ctl_scsiio {int dummy; } ;
typedef int sks ;


 int SSD_ELEM_NONE ;
 int SSD_ELEM_SKS ;
 int SSD_FIELDPTR_CMD ;
 int SSD_KEY_ILLEGAL_REQUEST ;
 int SSD_SCS_VALID ;
 int ctl_set_sense (struct ctl_scsiio*,int,int ,int,int,int ,int,int*,int ) ;
 int scsi_ulto2b (int ,int*) ;

void
ctl_set_invalid_opcode(struct ctl_scsiio *ctsio)
{
 uint8_t sks[3];

 sks[0] = SSD_SCS_VALID | SSD_FIELDPTR_CMD;
 scsi_ulto2b(0, &sks[1]);


 ctl_set_sense(ctsio,
                          1,
                      SSD_KEY_ILLEGAL_REQUEST,
                0x20,
                 0x00,
                 SSD_ELEM_SKS,
                 sizeof(sks),
                 sks,
        SSD_ELEM_NONE);
}
