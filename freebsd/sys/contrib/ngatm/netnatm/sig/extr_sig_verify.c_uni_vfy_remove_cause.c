
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uni_ierr {scalar_t__ ie; } ;
struct TYPE_2__ {int errcnt; struct uni_ierr* err; } ;
struct uni {TYPE_1__ cx; } ;


 scalar_t__ UNI_IE_CAUSE ;

void
uni_vfy_remove_cause(struct uni *uni)
{
 struct uni_ierr *e1, *e0;

 e0 = e1 = uni->cx.err;
 while (e1 < uni->cx.err + uni->cx.errcnt) {
  if (e1->ie != UNI_IE_CAUSE) {
   if (e0 != e1)
    *e0 = *e1;
   e0++;
  }
  e1++;
 }
 uni->cx.errcnt = e0 - uni->cx.err;
}
