
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct scsi_sense_data_fixed {int flags; int add_sense_code; int add_sense_code_qual; } ;
struct scsi_sense_data_desc {int sense_key; int add_sense_code; int add_sense_code_qual; } ;
struct scsi_sense_data {int error_code; } ;






 int SSD_DESC_IS_PRESENT (struct scsi_sense_data_desc*,scalar_t__,int*) ;
 int SSD_ERRCODE ;
 int SSD_FIXED_IS_FILLED (struct scsi_sense_data_fixed*,int*) ;
 int SSD_FIXED_IS_PRESENT (struct scsi_sense_data_fixed*,scalar_t__,int*) ;
 int SSD_KEY ;
 int* add_sense_code ;
 int* add_sense_code_qual ;
 int* flags ;

void
scsi_extract_sense_len(struct scsi_sense_data *sense_data, u_int sense_len,
         int *error_code, int *sense_key, int *asc, int *ascq,
         int show_errors)
{



 if (sense_len == 0) {
  if (show_errors == 0) {
   *error_code = 0;
   *sense_key = 0;
   *asc = 0;
   *ascq = 0;
  } else {
   *error_code = -1;
   *sense_key = -1;
   *asc = -1;
   *ascq = -1;
  }
  return;
 }

 *error_code = sense_data->error_code & SSD_ERRCODE;

 switch (*error_code) {
 case 129:
 case 128: {
  struct scsi_sense_data_desc *sense;

  sense = (struct scsi_sense_data_desc *)sense_data;

  if (SSD_DESC_IS_PRESENT(sense, sense_len, sense_key))
   *sense_key = sense->sense_key & SSD_KEY;
  else
   *sense_key = (show_errors) ? -1 : 0;

  if (SSD_DESC_IS_PRESENT(sense, sense_len, add_sense_code))
   *asc = sense->add_sense_code;
  else
   *asc = (show_errors) ? -1 : 0;

  if (SSD_DESC_IS_PRESENT(sense, sense_len, add_sense_code_qual))
   *ascq = sense->add_sense_code_qual;
  else
   *ascq = (show_errors) ? -1 : 0;
  break;
 }
 case 131:
 case 130:
 default: {
  struct scsi_sense_data_fixed *sense;

  sense = (struct scsi_sense_data_fixed *)sense_data;

  if (SSD_FIXED_IS_PRESENT(sense, sense_len, flags))
   *sense_key = sense->flags & SSD_KEY;
  else
   *sense_key = (show_errors) ? -1 : 0;

  if ((SSD_FIXED_IS_PRESENT(sense, sense_len, add_sense_code))
   && (SSD_FIXED_IS_FILLED(sense, add_sense_code)))
   *asc = sense->add_sense_code;
  else
   *asc = (show_errors) ? -1 : 0;

  if ((SSD_FIXED_IS_PRESENT(sense, sense_len,add_sense_code_qual))
   && (SSD_FIXED_IS_FILLED(sense, add_sense_code_qual)))
   *ascq = sense->add_sense_code_qual;
  else
   *ascq = (show_errors) ? -1 : 0;
  break;
 }
 }
}
