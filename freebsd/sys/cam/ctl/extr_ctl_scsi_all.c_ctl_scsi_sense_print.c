
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;
struct ctl_scsiio {int dummy; } ;
typedef int str ;
typedef int FILE ;


 int SSS_FLAG_PRINT_COMMAND ;
 int ctl_scsi_sense_sbuf (struct ctl_scsiio*,struct scsi_inquiry_data*,struct sbuf*,int ) ;
 int fprintf (int *,char*,char*) ;
 char* sbuf_data (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,int,int ) ;

void
ctl_scsi_sense_print(struct ctl_scsiio *ctsio,
       struct scsi_inquiry_data *inq_data, FILE *ofile)
{
 struct sbuf sb;
 char str[512];

 if ((ctsio == ((void*)0)) || (ofile == ((void*)0)))
  return;

 sbuf_new(&sb, str, sizeof(str), 0);

 ctl_scsi_sense_sbuf(ctsio, inq_data, &sb, SSS_FLAG_PRINT_COMMAND);

 sbuf_finish(&sb);

 fprintf(ofile, "%s", sbuf_data(&sb));
}
