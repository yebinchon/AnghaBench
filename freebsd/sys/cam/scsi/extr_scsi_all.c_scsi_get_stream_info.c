
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct scsi_sense_stream {int byte3; } ;
struct scsi_sense_data_fixed {int flags; } ;
struct scsi_sense_data_desc {int dummy; } ;
struct scsi_sense_data {int dummy; } ;
struct scsi_inquiry_data {int dummy; } ;
typedef int scsi_sense_data_type ;


 int SID_TYPE (struct scsi_inquiry_data*) ;
 int SSD_DESC_STREAM ;
 int SSD_EOM ;
 int SSD_FILEMARK ;
 int SSD_FIXED_IS_PRESENT (struct scsi_sense_data_fixed*,int ,int ) ;
 int SSD_ILI ;



 int flags ;
 scalar_t__ scsi_find_desc (struct scsi_sense_data_desc*,int ,int ) ;
 int scsi_sense_type (struct scsi_sense_data*) ;

int
scsi_get_stream_info(struct scsi_sense_data *sense_data, u_int sense_len,
       struct scsi_inquiry_data *inq_data, uint8_t *stream_bits)
{
 scsi_sense_data_type sense_type;

 if (inq_data != ((void*)0)) {
  switch (SID_TYPE(inq_data)) {
  case 128:
   break;
  default:
   goto bailout;
   break;
  }
 }

 sense_type = scsi_sense_type(sense_data);

 switch (sense_type) {
 case 130: {
  struct scsi_sense_data_desc *sense;
  struct scsi_sense_stream *stream;

  sense = (struct scsi_sense_data_desc *)sense_data;

  stream = (struct scsi_sense_stream *)scsi_find_desc(sense,
      sense_len, SSD_DESC_STREAM);
  if (stream == ((void*)0))
   goto bailout;

  *stream_bits = stream->byte3;
  break;
 }
 case 129: {
  struct scsi_sense_data_fixed *sense;

  sense = (struct scsi_sense_data_fixed *)sense_data;

  if (SSD_FIXED_IS_PRESENT(sense, sense_len, flags) == 0)
   goto bailout;

  *stream_bits = sense->flags & (SSD_ILI|SSD_EOM|SSD_FILEMARK);
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
