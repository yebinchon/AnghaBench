
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ u_int ;
struct scsi_sense_sks {int* sense_key_spec; } ;
struct scsi_sense_data_fixed {int* sense_key_spec; } ;
struct scsi_sense_data_desc {int dummy; } ;
struct scsi_sense_data {int dummy; } ;
typedef int scsi_sense_data_type ;


 int SSD_DESC_SKS ;
 int SSD_FIXED_IS_FILLED (struct scsi_sense_data_fixed*,int ) ;
 int SSD_FIXED_IS_PRESENT (struct scsi_sense_data_fixed*,scalar_t__,int ) ;
 int SSD_SCS_VALID ;
 int SSD_SKS_VALID ;


 int bcopy (int*,int *,int) ;
 scalar_t__ scsi_find_desc (struct scsi_sense_data_desc*,scalar_t__,int ) ;
 int scsi_sense_type (struct scsi_sense_data*) ;
 int sense_key_spec ;

int
scsi_get_sks(struct scsi_sense_data *sense_data, u_int sense_len, uint8_t *sks)
{
 scsi_sense_data_type sense_type;

 if (sense_len == 0)
  goto bailout;

 sense_type = scsi_sense_type(sense_data);

 switch (sense_type) {
 case 129: {
  struct scsi_sense_data_desc *sense;
  struct scsi_sense_sks *desc;

  sense = (struct scsi_sense_data_desc *)sense_data;

  desc = (struct scsi_sense_sks *)scsi_find_desc(sense, sense_len,
              SSD_DESC_SKS);
  if (desc == ((void*)0))
   goto bailout;

  if ((desc->sense_key_spec[0] & SSD_SKS_VALID) == 0)
   goto bailout;

  bcopy(desc->sense_key_spec, sks, sizeof(desc->sense_key_spec));
  break;
 }
 case 128: {
  struct scsi_sense_data_fixed *sense;

  sense = (struct scsi_sense_data_fixed *)sense_data;

  if ((SSD_FIXED_IS_PRESENT(sense, sense_len, sense_key_spec)== 0)
   || (SSD_FIXED_IS_FILLED(sense, sense_key_spec) == 0))
   goto bailout;

  if ((sense->sense_key_spec[0] & SSD_SCS_VALID) == 0)
   goto bailout;

  bcopy(sense->sense_key_spec, sks,sizeof(sense->sense_key_spec));
  break;
 }
 default:
  goto bailout;
  break;
 }
 return (0);
bailout:
 return (1);
}
