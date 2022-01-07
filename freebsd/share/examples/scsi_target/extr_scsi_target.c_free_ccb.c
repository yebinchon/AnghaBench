
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int func_code; union ccb* targ_descr; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct ctio_descr {union ccb* buf; } ;





 int free (union ccb*) ;
 int num_ctios ;

void
free_ccb(union ccb *ccb)
{
 switch (ccb->ccb_h.func_code) {
 case 129:
 {
  struct ctio_descr *c_descr;

  c_descr = (struct ctio_descr *)ccb->ccb_h.targ_descr;
  free(c_descr->buf);
  num_ctios--;

 }
 case 130:
  free(ccb->ccb_h.targ_descr);

 case 128:
 default:
  free(ccb);
  break;
 }
}
