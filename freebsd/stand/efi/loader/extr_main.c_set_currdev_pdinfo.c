
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int d_unit; TYPE_5__* d_dev; } ;
struct disk_devdesc {int d_partition; int d_slice; TYPE_1__ dd; } ;
struct devdesc {int dummy; } ;
struct TYPE_8__ {int pd_unit; TYPE_5__* pd_devsw; TYPE_2__* pd_parent; } ;
typedef TYPE_3__ pdinfo_t ;
struct TYPE_9__ {scalar_t__ dv_type; } ;
struct TYPE_7__ {int pd_unit; } ;


 scalar_t__ DEVT_DISK ;
 int D_PARTISGPT ;
 int D_PARTNONE ;
 int D_SLICENONE ;
 int set_currdev_devdesc (struct devdesc*) ;
 int set_currdev_devsw (TYPE_5__*,int ) ;

__attribute__((used)) static void
set_currdev_pdinfo(pdinfo_t *dp)
{






 if (dp->pd_devsw->dv_type == DEVT_DISK) {
  struct disk_devdesc currdev;

  currdev.dd.d_dev = dp->pd_devsw;
  if (dp->pd_parent == ((void*)0)) {
   currdev.dd.d_unit = dp->pd_unit;
   currdev.d_slice = D_SLICENONE;
   currdev.d_partition = D_PARTNONE;
  } else {
   currdev.dd.d_unit = dp->pd_parent->pd_unit;
   currdev.d_slice = dp->pd_unit;
   currdev.d_partition = D_PARTISGPT;
  }
  set_currdev_devdesc((struct devdesc *)&currdev);
 } else {
  set_currdev_devsw(dp->pd_devsw, dp->pd_unit);
 }
}
