
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct cam_ed {int inq_data; } ;


 int scsi_print_inquiry_short_sbuf (struct sbuf*,int *) ;

__attribute__((used)) static void
scsi_proto_denounce_sbuf(struct cam_ed *device, struct sbuf *sb)
{
 scsi_print_inquiry_short_sbuf(sb, &device->inq_data);
}
