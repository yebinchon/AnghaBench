
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_inquiry_data {int revision; int product; int vendor; } ;
struct sbuf {int dummy; } ;


 int cam_strvis_sbuf (struct sbuf*,int ,int,int ) ;
 int sbuf_printf (struct sbuf*,char*) ;

void
scsi_print_inquiry_short_sbuf(struct sbuf *sb, struct scsi_inquiry_data *inq_data)
{

 sbuf_printf(sb, "<");
 cam_strvis_sbuf(sb, inq_data->vendor, sizeof(inq_data->vendor), 0);
 sbuf_printf(sb, " ");
 cam_strvis_sbuf(sb, inq_data->product, sizeof(inq_data->product), 0);
 sbuf_printf(sb, " ");
 cam_strvis_sbuf(sb, inq_data->revision, sizeof(inq_data->revision), 0);
 sbuf_printf(sb, "> ");
}
