
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ act; } ;
struct uni_ie_cause {TYPE_1__ h; } ;
struct call {int uni; } ;


 scalar_t__ IE_ISGOOD (struct uni_ie_cause) ;
 int IE_ISPRESENT (struct uni_ie_cause) ;
 int MK_IE_CAUSE (struct uni_ie_cause,int ,int ) ;
 int UNI_CAUSE_LOC_USER ;
 int UNI_CAUSE_UNSPEC ;
 scalar_t__ UNI_IEACT_DEFAULT ;
 int uni_vfy_remove_cause (int ) ;

__attribute__((used)) static void
handle_bad_drop_cause(struct call *c, struct uni_ie_cause *cause, int mkcause)
{

 if (IE_ISGOOD(*cause))
  return;

 if (!IE_ISPRESENT(*cause)) {


  uni_vfy_remove_cause(c->uni);
  return;
 }
 if (cause->h.act != UNI_IEACT_DEFAULT)
  return;


 uni_vfy_remove_cause(c->uni);
 if (mkcause)
  MK_IE_CAUSE(*cause, UNI_CAUSE_LOC_USER, UNI_CAUSE_UNSPEC);
}
