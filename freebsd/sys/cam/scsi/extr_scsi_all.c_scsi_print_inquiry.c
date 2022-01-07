
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;


 int SBUF_FIXEDLEN ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,int,int ) ;
 int sbuf_putbuf (struct sbuf*) ;
 int scsi_print_inquiry_sbuf (struct sbuf*,struct scsi_inquiry_data*) ;

void
scsi_print_inquiry(struct scsi_inquiry_data *inq_data)
{
 struct sbuf sb;
 char buffer[120];

 sbuf_new(&sb, buffer, 120, SBUF_FIXEDLEN);
 scsi_print_inquiry_sbuf(&sb, inq_data);
 sbuf_finish(&sb);
 sbuf_putbuf(&sb);
}
