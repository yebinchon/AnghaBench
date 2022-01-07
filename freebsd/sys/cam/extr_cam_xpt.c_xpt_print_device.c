
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
struct cam_ed {TYPE_1__* sim; scalar_t__ lun_id; TYPE_2__* target; } ;
struct TYPE_4__ {int target_id; } ;
struct TYPE_3__ {char* sim_name; int unit_number; int bus_id; } ;


 int printf (char*,...) ;

void
xpt_print_device(struct cam_ed *device)
{

 if (device == ((void*)0))
  printf("(nopath): ");
 else {
  printf("(noperiph:%s%d:%d:%d:%jx): ", device->sim->sim_name,
         device->sim->unit_number,
         device->sim->bus_id,
         device->target->target_id,
         (uintmax_t)device->lun_id);
 }
}
