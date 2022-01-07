
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_ed {int inq_data; } ;


 int scsi_print_inquiry (int *) ;

__attribute__((used)) static void
scsi_proto_announce(struct cam_ed *device)
{
 scsi_print_inquiry(&device->inq_data);
}
