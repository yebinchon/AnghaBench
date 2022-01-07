
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct scsi_sense_data_fixed {int flags; } ;
struct scsi_sense_data_desc {int dummy; } ;
struct scsi_sense_data {int dummy; } ;
struct scsi_sense_block {int byte3; } ;
struct scsi_inquiry_data {int dummy; } ;
typedef int scsi_sense_data_type ;


 int SID_TYPE (struct scsi_inquiry_data*) ;
 int SSD_DESC_BLOCK ;
 int SSD_FIXED_IS_PRESENT (struct scsi_sense_data_fixed*,int ,int ) ;
 int SSD_ILI ;





 int flags ;
 scalar_t__ scsi_find_desc (struct scsi_sense_data_desc*,int ,int ) ;
 int scsi_sense_type (struct scsi_sense_data*) ;

int
scsi_get_block_info(struct scsi_sense_data *sense_data, u_int sense_len,
      struct scsi_inquiry_data *inq_data, uint8_t *block_bits)
{
 scsi_sense_data_type sense_type;

 if (inq_data != ((void*)0)) {
  switch (SID_TYPE(inq_data)) {
  case 130:
  case 129:
  case 128:
   break;
  default:
   goto bailout;
   break;
  }
 }

 sense_type = scsi_sense_type(sense_data);

 switch (sense_type) {
 case 132: {
  struct scsi_sense_data_desc *sense;
  struct scsi_sense_block *block;

  sense = (struct scsi_sense_data_desc *)sense_data;

  block = (struct scsi_sense_block *)scsi_find_desc(sense,
      sense_len, SSD_DESC_BLOCK);
  if (block == ((void*)0))
   goto bailout;

  *block_bits = block->byte3;
  break;
 }
 case 131: {
  struct scsi_sense_data_fixed *sense;

  sense = (struct scsi_sense_data_fixed *)sense_data;

  if (SSD_FIXED_IS_PRESENT(sense, sense_len, flags) == 0)
   goto bailout;

  *block_bits = sense->flags & SSD_ILI;
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
