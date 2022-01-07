
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union uni_ieall {int dummy; } uni_ieall ;
typedef int u_int ;
struct unicx {int pnni; int q2932; } ;
struct uni_release {int unrec; int crankback; int facility; int uu; int * git; int notify; int * cause; } ;


 int IE_ISPRESENT (int ) ;
 int UNI_IE_CAUSE ;
 int UNI_IE_CRANKBACK ;
 int UNI_IE_FACILITY ;
 int UNI_IE_GIT ;
 int UNI_IE_NOTIFY ;
 int UNI_IE_UNREC ;
 int UNI_IE_UU ;
 int UNI_NUM_IE_GIT ;
 int uni_check_ie (int ,union uni_ieall*,struct unicx*) ;

__attribute__((used)) static int
check_release(struct uni_release *m, struct unicx *cx)
{
 int ret = 0;
 u_int i;

 for(i = 0; i < 2 ; i++) {
  ret |= uni_check_ie(UNI_IE_CAUSE, (union uni_ieall *)&m->cause[i], cx);
 }
 ret |= uni_check_ie(UNI_IE_NOTIFY, (union uni_ieall *)&m->notify, cx);
 for(i = 0; i < UNI_NUM_IE_GIT ; i++) {
  ret |= uni_check_ie(UNI_IE_GIT, (union uni_ieall *)&m->git[i], cx);
 }
 if(!(!cx->pnni))
  ret |= IE_ISPRESENT(m->uu);
 else
  ret |= uni_check_ie(UNI_IE_UU, (union uni_ieall *)&m->uu, cx);
 if(!(cx->q2932))
  ret |= IE_ISPRESENT(m->facility);
 else
  ret |= uni_check_ie(UNI_IE_FACILITY, (union uni_ieall *)&m->facility, cx);
 if(!(cx->pnni))
  ret |= IE_ISPRESENT(m->crankback);
 else
  ret |= uni_check_ie(UNI_IE_CRANKBACK, (union uni_ieall *)&m->crankback, cx);
 ret |= uni_check_ie(UNI_IE_UNREC, (union uni_ieall *)&m->unrec, cx);

 return ret;
}
