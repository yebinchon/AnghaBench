
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_int ;
struct scsi_sense_data_fixed {int info; } ;
struct scsi_sense_data_desc {int dummy; } ;
struct scsi_sense_data {int error_code; } ;
struct scsi_print_sense_info {char* path_str; int cdb_len; struct scsi_inquiry_data* inq_data; int * cdb; struct sbuf* sb; } ;
struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;




 int SSD_DESC_COMMAND ;


 int SSD_DESC_FRU ;
 int SSD_DESC_INFO ;
 int SSD_ERRCODE_VALID ;
 int SSD_FIXED_IS_PRESENT (struct scsi_sense_data_fixed*,int ,int ) ;
 int SSD_TYPE_DESC ;
 int info ;
 int sbuf_cat (struct sbuf*,char const*) ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 int scsi_4btoul (int ) ;
 int scsi_block_sbuf (struct sbuf*,int ) ;
 int scsi_command_sbuf (struct sbuf*,int *,int,struct scsi_inquiry_data*,int ) ;
 int scsi_desc_iterate (struct scsi_sense_data_desc*,int ,int ,struct scsi_print_sense_info*) ;
 int scsi_extract_sense_len (struct scsi_sense_data*,int ,int*,int*,int*,int*,int) ;
 int scsi_fru_sbuf (struct sbuf*,int ) ;
 int scsi_get_block_info (struct scsi_sense_data*,int ,struct scsi_inquiry_data*,int *) ;
 int scsi_get_sense_info (struct scsi_sense_data*,int ,int ,int *,int *) ;
 int scsi_get_sks (struct scsi_sense_data*,int ,int *) ;
 int scsi_get_stream_info (struct scsi_sense_data*,int ,struct scsi_inquiry_data*,int *) ;
 int scsi_info_sbuf (struct sbuf*,int *,int,struct scsi_inquiry_data*,int ) ;
 int scsi_print_desc_func ;
 int scsi_sense_desc (int,int,int,struct scsi_inquiry_data*,char const**,char const**) ;
 int scsi_sense_type (struct scsi_sense_data*) ;
 int scsi_sks_sbuf (struct sbuf*,int,int *) ;
 int scsi_stream_sbuf (struct sbuf*,int ) ;

void
scsi_sense_only_sbuf(struct scsi_sense_data *sense, u_int sense_len,
       struct sbuf *sb, char *path_str,
       struct scsi_inquiry_data *inq_data, uint8_t *cdb,
       int cdb_len)
{
 int error_code, sense_key, asc, ascq;

 sbuf_cat(sb, path_str);

 scsi_extract_sense_len(sense, sense_len, &error_code, &sense_key,
          &asc, &ascq, 1);

 sbuf_printf(sb, "SCSI sense: ");
 switch (error_code) {
 case 130:
 case 128:
  sbuf_printf(sb, "Deferred error: ");


 case 131:
 case 129:
 {
  struct scsi_sense_data_desc *desc_sense;
  struct scsi_print_sense_info print_info;
  const char *sense_key_desc;
  const char *asc_desc;
  uint8_t sks[3];
  uint64_t val;
  uint8_t bits;
  scsi_sense_desc(sense_key, asc, ascq, inq_data,
    &sense_key_desc, &asc_desc);




  sbuf_cat(sb, sense_key_desc);
  sbuf_printf(sb, " asc:%x,%x (%s)\n", asc, ascq, asc_desc);




  if (scsi_get_block_info(sense, sense_len, inq_data,
      &bits) == 0 && bits != 0) {
   sbuf_cat(sb, path_str);
   scsi_block_sbuf(sb, bits);
   sbuf_printf(sb, "\n");
  } else if (scsi_get_stream_info(sense, sense_len, inq_data,
      &bits) == 0 && bits != 0) {
   sbuf_cat(sb, path_str);
   scsi_stream_sbuf(sb, bits);
   sbuf_printf(sb, "\n");
  }




  if (scsi_get_sense_info(sense, sense_len, SSD_DESC_INFO,
     &val, ((void*)0)) == 0) {
   sbuf_cat(sb, path_str);
   scsi_info_sbuf(sb, cdb, cdb_len, inq_data, val);
   sbuf_printf(sb, "\n");
  }




  if (scsi_get_sense_info(sense, sense_len, SSD_DESC_FRU,
     &val, ((void*)0)) == 0) {
   sbuf_cat(sb, path_str);
   scsi_fru_sbuf(sb, val);
   sbuf_printf(sb, "\n");
  }




  if (scsi_get_sense_info(sense, sense_len, SSD_DESC_COMMAND,
     &val, ((void*)0)) == 0) {
   sbuf_cat(sb, path_str);
   scsi_command_sbuf(sb, cdb, cdb_len, inq_data, val);
   sbuf_printf(sb, "\n");
  }




  if (scsi_get_sks(sense, sense_len, sks) == 0) {
   sbuf_cat(sb, path_str);
   scsi_sks_sbuf(sb, sense_key, sks);
   sbuf_printf(sb, "\n");
  }






  if (scsi_sense_type(sense) != SSD_TYPE_DESC)
   break;

  desc_sense = (struct scsi_sense_data_desc *)sense;

  print_info.sb = sb;
  print_info.path_str = path_str;
  print_info.cdb = cdb;
  print_info.cdb_len = cdb_len;
  print_info.inq_data = inq_data;




  scsi_desc_iterate(desc_sense, sense_len, scsi_print_desc_func,
      &print_info);
  break;

 }
 case -1:





  sbuf_printf(sb, "No sense data present\n");
  break;
 default: {
  sbuf_printf(sb, "Error code 0x%x", error_code);
  if (sense->error_code & SSD_ERRCODE_VALID) {
   struct scsi_sense_data_fixed *fixed_sense;

   fixed_sense = (struct scsi_sense_data_fixed *)sense;

   if (SSD_FIXED_IS_PRESENT(fixed_sense, sense_len, info)){
    uint32_t info;

    info = scsi_4btoul(fixed_sense->info);

    sbuf_printf(sb, " at block no. %d (decimal)",
         info);
   }
  }
  sbuf_printf(sb, "\n");
  break;
 }
 }
}
