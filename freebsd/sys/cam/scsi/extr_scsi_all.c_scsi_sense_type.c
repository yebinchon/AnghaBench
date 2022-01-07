
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_data {int error_code; } ;
typedef int scsi_sense_data_type ;






 int SSD_ERRCODE ;
 int SSD_TYPE_DESC ;
 int SSD_TYPE_FIXED ;
 int SSD_TYPE_NONE ;

scsi_sense_data_type
scsi_sense_type(struct scsi_sense_data *sense_data)
{
 switch (sense_data->error_code & SSD_ERRCODE) {
 case 129:
 case 128:
  return (SSD_TYPE_DESC);
  break;
 case 131:
 case 130:
  return (SSD_TYPE_FIXED);
  break;
 default:
  break;
 }

 return (SSD_TYPE_NONE);
}
