
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;
struct ctl_scsiio {int dummy; } ;


 int SSS_FLAG_PRINT_COMMAND ;
 int ctl_scsi_sense_sbuf (struct ctl_scsiio*,struct scsi_inquiry_data*,struct sbuf*,int ) ;
 char* sbuf_data (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,int,int ) ;

char *
ctl_scsi_sense_string(struct ctl_scsiio *ctsio,
        struct scsi_inquiry_data *inq_data, char *str,
        int str_len)
{
 struct sbuf sb;

 sbuf_new(&sb, str, str_len, 0);

 ctl_scsi_sense_sbuf(ctsio, inq_data, &sb, SSS_FLAG_PRINT_COMMAND);

 sbuf_finish(&sb);

 return(sbuf_data(&sb));
}
