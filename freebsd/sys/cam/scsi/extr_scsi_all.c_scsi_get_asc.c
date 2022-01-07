
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct scsi_sense_data {int dummy; } ;


 int scsi_extract_sense_len (struct scsi_sense_data*,int ,int*,int*,int*,int*,int) ;

int
scsi_get_asc(struct scsi_sense_data *sense_data, u_int sense_len,
      int show_errors)
{
 int error_code, sense_key, asc, ascq;

 scsi_extract_sense_len(sense_data, sense_len, &error_code,
          &sense_key, &asc, &ascq, show_errors);

 return (asc);
}
