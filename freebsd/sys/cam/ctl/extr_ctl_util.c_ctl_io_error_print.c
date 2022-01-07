
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ctl_io {int dummy; } ctl_io ;
struct scsi_inquiry_data {int dummy; } ;
typedef int str ;
typedef int FILE ;


 char* ctl_io_error_string (union ctl_io*,struct scsi_inquiry_data*,char*,int) ;
 int fprintf (int *,char*,char*) ;

void
ctl_io_error_print(union ctl_io *io, struct scsi_inquiry_data *inq_data,
     FILE *ofile)
{
 char str[512];

 fprintf(ofile, "%s", ctl_io_error_string(io, inq_data, str,
  sizeof(str)));
}
