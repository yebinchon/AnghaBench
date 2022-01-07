
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sense_len; int sense_data; } ;
union ctl_io {TYPE_1__ scsiio; } ;
typedef int tpc_error_action ;
 int TPC_ERR_FAIL ;
 int TPC_ERR_NO_DECREMENT ;
 int TPC_ERR_RETRY ;
 int scsi_extract_sense_len (int *,int ,int*,int*,int*,int*,int) ;

__attribute__((used)) static tpc_error_action
tpc_checkcond_parse(union ctl_io *io)
{
 tpc_error_action error_action;
 int error_code, sense_key, asc, ascq;




 error_action = TPC_ERR_RETRY;

 scsi_extract_sense_len(&io->scsiio.sense_data,
          io->scsiio.sense_len,
          &error_code,
          &sense_key,
          &asc,
          &ascq,
                          1);

 switch (error_code) {
 case 133:
 case 131:
  error_action |= TPC_ERR_NO_DECREMENT;
  break;
 case 134:
 case 132:
 default:
  switch (sense_key) {
  case 128:
   error_action |= TPC_ERR_NO_DECREMENT;
   break;
  case 130:




   if ((asc == 0x44) && (ascq == 0x00))
    error_action = TPC_ERR_FAIL;
   break;
  case 129:




   if ((asc == 0x04) && (ascq == 0x02))
    error_action = TPC_ERR_FAIL;




   if ((asc == 0x04) && (ascq == 0x03))
    error_action = TPC_ERR_FAIL;
   break;
  }
 }
 return (error_action);
}
