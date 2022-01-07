
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union uni_ieall {int dummy; } uni_ieall ;
struct unicx {int dummy; } ;
struct uni_status_enq {int unrec; int epref; } ;


 int UNI_IE_EPREF ;
 int UNI_IE_UNREC ;
 int uni_check_ie (int ,union uni_ieall*,struct unicx*) ;

__attribute__((used)) static int
check_status_enq(struct uni_status_enq *m, struct unicx *cx)
{
 int ret = 0;

 ret |= uni_check_ie(UNI_IE_EPREF, (union uni_ieall *)&m->epref, cx);
 ret |= uni_check_ie(UNI_IE_UNREC, (union uni_ieall *)&m->unrec, cx);

 return ret;
}
