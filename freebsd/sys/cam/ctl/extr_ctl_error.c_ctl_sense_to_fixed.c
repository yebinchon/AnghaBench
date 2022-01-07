
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct scsi_sense_stream {int length; int byte3; } ;
struct scsi_sense_sks {int length; int * sense_key_spec; } ;
struct scsi_sense_info {int length; int * info; } ;
struct scsi_sense_fru {int length; int fru; } ;
struct scsi_sense_desc_header {int length; } ;
struct scsi_sense_data_fixed {int dummy; } ;
struct scsi_sense_data_desc {int error_code; int extra_len; int* sense_desc; int sense_key; int add_sense_code_qual; int add_sense_code; } ;
struct scsi_sense_data {int dummy; } ;
struct scsi_sense_command {int length; int * command_info; } ;



 int SSD_DESC_CURRENT_ERROR ;




 int SSD_ELEM_COMMAND ;
 int SSD_ELEM_FRU ;
 int SSD_ELEM_INFO ;
 int SSD_ELEM_NONE ;
 int SSD_ELEM_SKIP ;
 int SSD_ELEM_SKS ;
 int SSD_ELEM_STREAM ;
 int SSD_ERRCODE ;
 int SSD_FULL_SIZE ;
 int SSD_KEY ;
 int SSD_TYPE_FIXED ;
 int ctl_set_sense_data (struct scsi_sense_data*,int *,int *,int ,int,int,int ,int ,int ,int,int *,int ,int,int *,int ,int,int *,int ,int,int *,int ,int,int *,int ) ;

void
ctl_sense_to_fixed(struct scsi_sense_data_desc *sense_src,
     struct scsi_sense_data_fixed *sense_dest)
{
 int current_error;
 uint8_t *info_ptr = ((void*)0), *cmd_ptr = ((void*)0), *fru_ptr = ((void*)0);
 uint8_t *sks_ptr = ((void*)0), *stream_ptr = ((void*)0);
 int info_size = 0, cmd_size = 0, fru_size = 0;
 int sks_size = 0, stream_size = 0;
 int pos;
 u_int sense_len;

 if ((sense_src->error_code & SSD_ERRCODE) == SSD_DESC_CURRENT_ERROR)
  current_error = 1;
 else
  current_error = 0;

 for (pos = 0; pos < (int)(sense_src->extra_len - 1);) {
  struct scsi_sense_desc_header *header;

  header = (struct scsi_sense_desc_header *)
      &sense_src->sense_desc[pos];





  if ((pos + header->length + sizeof(*header)) >
       sense_src->extra_len)
   break;

  switch (sense_src->sense_desc[pos]) {
  case 130: {
   struct scsi_sense_info *info;

   info = (struct scsi_sense_info *)header;

   info_ptr = info->info;
   info_size = sizeof(info->info);

   pos += info->length +
       sizeof(struct scsi_sense_desc_header);
   break;
  }
  case 132: {
   struct scsi_sense_command *cmd;

   cmd = (struct scsi_sense_command *)header;
   cmd_ptr = cmd->command_info;
   cmd_size = sizeof(cmd->command_info);

   pos += cmd->length +
       sizeof(struct scsi_sense_desc_header);
   break;
  }
  case 131: {
   struct scsi_sense_fru *fru;

   fru = (struct scsi_sense_fru *)header;
   fru_ptr = &fru->fru;
   fru_size = sizeof(fru->fru);
   pos += fru->length +
       sizeof(struct scsi_sense_desc_header);
   break;
  }
  case 129: {
   struct scsi_sense_sks *sks;

   sks = (struct scsi_sense_sks *)header;
   sks_ptr = sks->sense_key_spec;
   sks_size = sizeof(sks->sense_key_spec);

   pos = sks->length +
       sizeof(struct scsi_sense_desc_header);
   break;
  }
  case 128: {
   struct scsi_sense_stream *stream_sense;

   stream_sense = (struct scsi_sense_stream *)header;
   stream_ptr = &stream_sense->byte3;
   stream_size = sizeof(stream_sense->byte3);
   pos = stream_sense->length +
       sizeof(struct scsi_sense_desc_header);
   break;
  }
  default:




   pos += sizeof(*header) + header->length;
   break;
  }
 }

 sense_len = SSD_FULL_SIZE;
 ctl_set_sense_data((struct scsi_sense_data *)sense_dest, &sense_len,
              ((void*)0),
                       SSD_TYPE_FIXED,
      current_error,
                    sense_src->sense_key & SSD_KEY,
              sense_src->add_sense_code,
               sense_src->add_sense_code_qual,


      (info_ptr != ((void*)0)) ? SSD_ELEM_INFO : SSD_ELEM_SKIP,
      info_size,
      info_ptr,


      (cmd_ptr != ((void*)0)) ? SSD_ELEM_COMMAND : SSD_ELEM_SKIP,
      cmd_size,
      cmd_ptr,


      (fru_ptr != ((void*)0)) ? SSD_ELEM_FRU : SSD_ELEM_SKIP,
      fru_size,
      fru_ptr,


      (sks_ptr != ((void*)0)) ? SSD_ELEM_SKS : SSD_ELEM_SKIP,
      sks_size,
      sks_ptr,


      (stream_ptr != ((void*)0)) ? SSD_ELEM_STREAM : SSD_ELEM_SKIP,
      stream_size,
      stream_ptr,

      SSD_ELEM_NONE);
}
