
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ctl_io {int dummy; } ctl_io ;
struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;


 int SBUF_FIXEDLEN ;
 int ctl_io_error_sbuf (union ctl_io*,struct scsi_inquiry_data*,struct sbuf*) ;
 char* sbuf_data (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,int,int ) ;

char *
ctl_io_error_string(union ctl_io *io, struct scsi_inquiry_data *inq_data,
      char *str, int str_len)
{
 struct sbuf sb;

 sbuf_new(&sb, str, str_len, SBUF_FIXEDLEN);
 ctl_io_error_sbuf(io, inq_data, &sb);
 sbuf_finish(&sb);
 return (sbuf_data(&sb));
}
