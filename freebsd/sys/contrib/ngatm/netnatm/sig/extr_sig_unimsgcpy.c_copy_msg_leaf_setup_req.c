
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct uni_leaf_setup_req {int unrec; int lij_seqno; int lij_callid; int * calledsub; int called; int * callingsub; int calling; int * tns; } ;


 scalar_t__ IE_ISGOOD (int ) ;
 size_t UNI_NUM_IE_CALLEDSUB ;
 size_t UNI_NUM_IE_CALLINGSUB ;
 size_t UNI_NUM_IE_TNS ;

void
copy_msg_leaf_setup_req(struct uni_leaf_setup_req *src, struct uni_leaf_setup_req *dst)
{
 u_int s, d;

 for(s = d = 0; s < UNI_NUM_IE_TNS; s++)
  if(IE_ISGOOD(src->tns[s]))
   dst->tns[d++] = src->tns[s];
 if(IE_ISGOOD(src->calling))
  dst->calling = src->calling;
 for(s = d = 0; s < UNI_NUM_IE_CALLINGSUB; s++)
  if(IE_ISGOOD(src->callingsub[s]))
   dst->callingsub[d++] = src->callingsub[s];
 if(IE_ISGOOD(src->called))
  dst->called = src->called;
 for(s = d = 0; s < UNI_NUM_IE_CALLEDSUB; s++)
  if(IE_ISGOOD(src->calledsub[s]))
   dst->calledsub[d++] = src->calledsub[s];
 if(IE_ISGOOD(src->lij_callid))
  dst->lij_callid = src->lij_callid;
 if(IE_ISGOOD(src->lij_seqno))
  dst->lij_seqno = src->lij_seqno;
 if(IE_ISGOOD(src->unrec))
  dst->unrec = src->unrec;
}
