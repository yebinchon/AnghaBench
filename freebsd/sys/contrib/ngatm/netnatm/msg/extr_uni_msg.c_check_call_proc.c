
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union uni_ieall {int dummy; } uni_ieall ;
struct unicx {int pnni; } ;
struct uni_call_proc {int unrec; int notify; int epref; int connid; } ;


 int IE_ISPRESENT (int ) ;
 int UNI_IE_CONNID ;
 int UNI_IE_EPREF ;
 int UNI_IE_NOTIFY ;
 int UNI_IE_UNREC ;
 int uni_check_ie (int ,union uni_ieall*,struct unicx*) ;

__attribute__((used)) static int
check_call_proc(struct uni_call_proc *m, struct unicx *cx)
{
 int ret = 0;

 ret |= uni_check_ie(UNI_IE_CONNID, (union uni_ieall *)&m->connid, cx);
 ret |= uni_check_ie(UNI_IE_EPREF, (union uni_ieall *)&m->epref, cx);
 if(!(!cx->pnni))
  ret |= IE_ISPRESENT(m->notify);
 else
  ret |= uni_check_ie(UNI_IE_NOTIFY, (union uni_ieall *)&m->notify, cx);
 ret |= uni_check_ie(UNI_IE_UNREC, (union uni_ieall *)&m->unrec, cx);

 return ret;
}
