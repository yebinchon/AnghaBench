
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union uni_ieall {int dummy; } uni_ieall ;
struct unicx {int dummy; } ;
struct uni_facility {int unrec; int notify; int calling; int calledsub; int called; int facility; } ;


 int UNI_IE_CALLED ;
 int UNI_IE_CALLEDSUB ;
 int UNI_IE_CALLING ;
 int UNI_IE_FACILITY ;
 int UNI_IE_NOTIFY ;
 int UNI_IE_UNREC ;
 int uni_check_ie (int ,union uni_ieall*,struct unicx*) ;

__attribute__((used)) static int
check_facility(struct uni_facility *m, struct unicx *cx)
{
 int ret = 0;

 ret |= uni_check_ie(UNI_IE_FACILITY, (union uni_ieall *)&m->facility, cx);
 ret |= uni_check_ie(UNI_IE_CALLED, (union uni_ieall *)&m->called, cx);
 ret |= uni_check_ie(UNI_IE_CALLEDSUB, (union uni_ieall *)&m->calledsub, cx);
 ret |= uni_check_ie(UNI_IE_CALLING, (union uni_ieall *)&m->calling, cx);
 ret |= uni_check_ie(UNI_IE_NOTIFY, (union uni_ieall *)&m->notify, cx);
 ret |= uni_check_ie(UNI_IE_UNREC, (union uni_ieall *)&m->unrec, cx);

 return ret;
}
