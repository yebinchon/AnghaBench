
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_sense_data {int response_code; int asc; int ascq; int extra_len; int flags; } ;
struct TYPE_2__ {struct scsi_sense_data scsi_sense; } ;
struct scsipi_xfer {int error; TYPE_1__ sense; } ;


 int SKEY_NOT_READY ;
 int XS_SENSE ;

__attribute__((used)) static void
sense_notready(struct scsipi_xfer *xs)
{
 struct scsi_sense_data *sense = &xs->sense.scsi_sense;

 xs->error = XS_SENSE;

 sense->response_code = 0x70;
 sense->flags = SKEY_NOT_READY;
 sense->asc = 0x3A;
 sense->ascq = 0x00;
 sense->extra_len = 6;
}
