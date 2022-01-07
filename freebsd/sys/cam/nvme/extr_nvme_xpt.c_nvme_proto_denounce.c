
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_ed {int dummy; } ;


 int nvme_proto_announce (struct cam_ed*) ;

__attribute__((used)) static void
nvme_proto_denounce(struct cam_ed *device)
{

 nvme_proto_announce(device);
}
