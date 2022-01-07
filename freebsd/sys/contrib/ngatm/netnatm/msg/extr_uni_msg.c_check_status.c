
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union uni_ieall {int dummy; } uni_ieall ;
struct unicx {int dummy; } ;
struct uni_status {int unrec; int epstate; int epref; int cause; int callstate; } ;


 int UNI_IE_CALLSTATE ;
 int UNI_IE_CAUSE ;
 int UNI_IE_EPREF ;
 int UNI_IE_EPSTATE ;
 int UNI_IE_UNREC ;
 int uni_check_ie (int ,union uni_ieall*,struct unicx*) ;

__attribute__((used)) static int
check_status(struct uni_status *m, struct unicx *cx)
{
 int ret = 0;

 ret |= uni_check_ie(UNI_IE_CALLSTATE, (union uni_ieall *)&m->callstate, cx);
 ret |= uni_check_ie(UNI_IE_CAUSE, (union uni_ieall *)&m->cause, cx);
 ret |= uni_check_ie(UNI_IE_EPREF, (union uni_ieall *)&m->epref, cx);
 ret |= uni_check_ie(UNI_IE_EPSTATE, (union uni_ieall *)&m->epstate, cx);
 ret |= uni_check_ie(UNI_IE_UNREC, (union uni_ieall *)&m->unrec, cx);

 return ret;
}
