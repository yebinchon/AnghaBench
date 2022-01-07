
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef scalar_t__ u_int ;
struct scsi_sense_data {int dummy; } ;
typedef scalar_t__ scsi_sense_data_type ;


 scalar_t__ SSD_FULL_SIZE ;
 scalar_t__ SSD_TYPE_DESC ;
 int scsi_set_sense_data_desc_va (struct scsi_sense_data*,scalar_t__*,scalar_t__,int,int,int,int,int ) ;
 int scsi_set_sense_data_fixed_va (struct scsi_sense_data*,scalar_t__*,scalar_t__,int,int,int,int,int ) ;

void
scsi_set_sense_data_va(struct scsi_sense_data *sense_data, u_int *sense_len,
        scsi_sense_data_type sense_format, int current_error,
        int sense_key, int asc, int ascq, va_list ap)
{

 if (*sense_len > SSD_FULL_SIZE)
  *sense_len = SSD_FULL_SIZE;
 if (sense_format == SSD_TYPE_DESC)
  scsi_set_sense_data_desc_va(sense_data, sense_len,
      sense_format, current_error, sense_key, asc, ascq, ap);
 else
  scsi_set_sense_data_fixed_va(sense_data, sense_len,
      sense_format, current_error, sense_key, asc, ascq, ap);
}
