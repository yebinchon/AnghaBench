
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pptintr_arg {int msg_data; int addr; struct pptdev* pptdev; } ;
struct TYPE_2__ {scalar_t__ startrid; } ;
struct pptdev {TYPE_1__ msi; int * vm; } ;


 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int lapic_intr_msi (int *,int ,int ) ;

__attribute__((used)) static int
pptintr(void *arg)
{
 struct pptdev *ppt;
 struct pptintr_arg *pptarg;

 pptarg = arg;
 ppt = pptarg->pptdev;

 if (ppt->vm != ((void*)0))
  lapic_intr_msi(ppt->vm, pptarg->addr, pptarg->msg_data);
 else {




 }





 if (ppt->msi.startrid == 0)
  return (FILTER_STRAY);
 else
  return (FILTER_HANDLED);
}
