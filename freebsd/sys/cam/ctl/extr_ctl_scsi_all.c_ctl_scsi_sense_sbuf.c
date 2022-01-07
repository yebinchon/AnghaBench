
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ctl_io {int dummy; } ctl_io ;
struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;
struct ctl_scsiio {int cdb_len; int cdb; int sense_len; int sense_data; } ;
typedef int scsi_sense_string_flags ;
typedef int path_str ;


 int SSS_FLAG_PRINT_COMMAND ;
 int ctl_scsi_command_string (struct ctl_scsiio*,struct scsi_inquiry_data*,struct sbuf*) ;
 int ctl_scsi_path_string (union ctl_io*,char*,int) ;
 int sbuf_cat (struct sbuf*,char*) ;
 int sbuf_printf (struct sbuf*,char*) ;
 int scsi_sense_only_sbuf (int *,int ,struct sbuf*,char*,struct scsi_inquiry_data*,int ,int ) ;

int
ctl_scsi_sense_sbuf(struct ctl_scsiio *ctsio,
      struct scsi_inquiry_data *inq_data, struct sbuf *sb,
      scsi_sense_string_flags flags)
{
 char path_str[64];

 if ((ctsio == ((void*)0)) || (sb == ((void*)0)))
  return(-1);

 ctl_scsi_path_string((union ctl_io *)ctsio, path_str, sizeof(path_str));

 if (flags & SSS_FLAG_PRINT_COMMAND) {

  sbuf_cat(sb, path_str);

  ctl_scsi_command_string(ctsio, inq_data, sb);

  sbuf_printf(sb, "\n");
 }

 scsi_sense_only_sbuf(&ctsio->sense_data, ctsio->sense_len, sb,
        path_str, inq_data, ctsio->cdb, ctsio->cdb_len);

 return(0);
}
