
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_be_lun {int dummy; } ;


 int control_softc ;
 int ctl_alloc_lun (int ,int *,struct ctl_be_lun*) ;

__attribute__((used)) static void
ctl_create_lun(struct ctl_be_lun *be_lun)
{




 ctl_alloc_lun(control_softc, ((void*)0), be_lun);
}
