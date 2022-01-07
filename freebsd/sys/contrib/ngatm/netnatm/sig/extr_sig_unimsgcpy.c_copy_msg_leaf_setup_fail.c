
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct uni_leaf_setup_fail {int unrec; int * tns; int lij_seqno; int calledsub; int called; int cause; } ;


 scalar_t__ IE_ISGOOD (int ) ;
 size_t UNI_NUM_IE_TNS ;

void
copy_msg_leaf_setup_fail(struct uni_leaf_setup_fail *src, struct uni_leaf_setup_fail *dst)
{
 u_int s, d;

 if(IE_ISGOOD(src->cause))
  dst->cause = src->cause;
 if(IE_ISGOOD(src->called))
  dst->called = src->called;
 if(IE_ISGOOD(src->calledsub))
  dst->calledsub = src->calledsub;
 if(IE_ISGOOD(src->lij_seqno))
  dst->lij_seqno = src->lij_seqno;
 for(s = d = 0; s < UNI_NUM_IE_TNS; s++)
  if(IE_ISGOOD(src->tns[s]))
   dst->tns[d++] = src->tns[s];
 if(IE_ISGOOD(src->unrec))
  dst->unrec = src->unrec;
}
