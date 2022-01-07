
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union uni_ieall {int dummy; } uni_ieall ;
typedef size_t u_int ;
struct unicx {int dummy; } ;
struct uni_modify_req {int unrec; int * git; int notify; int mintraffic; int atraffic; int traffic; } ;


 int UNI_IE_ATRAFFIC ;
 int UNI_IE_GIT ;
 int UNI_IE_MINTRAFFIC ;
 int UNI_IE_NOTIFY ;
 int UNI_IE_TRAFFIC ;
 int UNI_IE_UNREC ;
 size_t UNI_NUM_IE_GIT ;
 int uni_check_ie (int ,union uni_ieall*,struct unicx*) ;

__attribute__((used)) static int
check_modify_req(struct uni_modify_req *m, struct unicx *cx)
{
 int ret = 0;
 u_int i;

 ret |= uni_check_ie(UNI_IE_TRAFFIC, (union uni_ieall *)&m->traffic, cx);
 ret |= uni_check_ie(UNI_IE_ATRAFFIC, (union uni_ieall *)&m->atraffic, cx);
 ret |= uni_check_ie(UNI_IE_MINTRAFFIC, (union uni_ieall *)&m->mintraffic, cx);
 ret |= uni_check_ie(UNI_IE_NOTIFY, (union uni_ieall *)&m->notify, cx);
 for(i = 0; i < UNI_NUM_IE_GIT ; i++) {
  ret |= uni_check_ie(UNI_IE_GIT, (union uni_ieall *)&m->git[i], cx);
 }
 ret |= uni_check_ie(UNI_IE_UNREC, (union uni_ieall *)&m->unrec, cx);

 return ret;
}
