
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union uni_ieall {int dummy; } uni_ieall ;
typedef size_t u_int ;
struct unicx {int dummy; } ;
struct uni_leaf_setup_req {int unrec; int lij_seqno; int lij_callid; int * calledsub; int called; int * callingsub; int calling; int * tns; } ;


 int UNI_IE_CALLED ;
 int UNI_IE_CALLEDSUB ;
 int UNI_IE_CALLING ;
 int UNI_IE_CALLINGSUB ;
 int UNI_IE_LIJ_CALLID ;
 int UNI_IE_LIJ_SEQNO ;
 int UNI_IE_TNS ;
 int UNI_IE_UNREC ;
 size_t UNI_NUM_IE_CALLEDSUB ;
 size_t UNI_NUM_IE_CALLINGSUB ;
 size_t UNI_NUM_IE_TNS ;
 int uni_check_ie (int ,union uni_ieall*,struct unicx*) ;

__attribute__((used)) static int
check_leaf_setup_req(struct uni_leaf_setup_req *m, struct unicx *cx)
{
 int ret = 0;
 u_int i;

 for(i = 0; i < UNI_NUM_IE_TNS ; i++) {
  ret |= uni_check_ie(UNI_IE_TNS, (union uni_ieall *)&m->tns[i], cx);
 }
 ret |= uni_check_ie(UNI_IE_CALLING, (union uni_ieall *)&m->calling, cx);
 for(i = 0; i < UNI_NUM_IE_CALLINGSUB ; i++) {
  ret |= uni_check_ie(UNI_IE_CALLINGSUB, (union uni_ieall *)&m->callingsub[i], cx);
 }
 ret |= uni_check_ie(UNI_IE_CALLED, (union uni_ieall *)&m->called, cx);
 for(i = 0; i < UNI_NUM_IE_CALLEDSUB ; i++) {
  ret |= uni_check_ie(UNI_IE_CALLEDSUB, (union uni_ieall *)&m->calledsub[i], cx);
 }
 ret |= uni_check_ie(UNI_IE_LIJ_CALLID, (union uni_ieall *)&m->lij_callid, cx);
 ret |= uni_check_ie(UNI_IE_LIJ_SEQNO, (union uni_ieall *)&m->lij_seqno, cx);
 ret |= uni_check_ie(UNI_IE_UNREC, (union uni_ieall *)&m->unrec, cx);

 return ret;
}
