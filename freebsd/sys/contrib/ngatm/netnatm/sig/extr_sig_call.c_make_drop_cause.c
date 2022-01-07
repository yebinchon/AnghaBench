
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int present; } ;
struct TYPE_5__ {int len; int * ie; } ;
struct TYPE_6__ {TYPE_1__ ie; } ;
struct uni_ie_cause {TYPE_3__ h; TYPE_2__ u; } ;
struct call {TYPE_4__* uni; } ;
struct TYPE_8__ {struct uni_ie_cause cause; } ;


 int IE_ISGOOD (struct uni_ie_cause) ;
 scalar_t__ IE_ISPRESENT (struct uni_ie_cause) ;
 int MK_IE_CAUSE (struct uni_ie_cause,int ,int ) ;
 int UNI_CAUSE_IE_INV ;
 int UNI_CAUSE_IE_P ;
 int UNI_CAUSE_LOC_USER ;
 int UNI_CAUSE_MANDAT ;
 int UNI_IE_CAUSE ;

__attribute__((used)) static void
make_drop_cause(struct call *c, struct uni_ie_cause *cause)
{

 if (!IE_ISGOOD(*cause)) {

  if (IE_ISPRESENT(*cause))
   MK_IE_CAUSE(c->uni->cause, UNI_CAUSE_LOC_USER,
       UNI_CAUSE_IE_INV);
  else
   MK_IE_CAUSE(c->uni->cause, UNI_CAUSE_LOC_USER,
       UNI_CAUSE_MANDAT);
  c->uni->cause.u.ie.len = 1;
  c->uni->cause.u.ie.ie[0] = UNI_IE_CAUSE;
  c->uni->cause.h.present |= UNI_CAUSE_IE_P;

 } else if (!IE_ISGOOD(c->uni->cause))
  c->uni->cause = *cause;
}
