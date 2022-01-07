
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_data {int dummy; } ;


 int scsi_extract_sense_len (struct scsi_sense_data*,int,int*,int*,int*,int*,int ) ;

void
scsi_extract_sense(struct scsi_sense_data *sense_data, int *error_code,
     int *sense_key, int *asc, int *ascq)
{
 scsi_extract_sense_len(sense_data, sizeof(*sense_data), error_code,
          sense_key, asc, ascq, 0);
}
