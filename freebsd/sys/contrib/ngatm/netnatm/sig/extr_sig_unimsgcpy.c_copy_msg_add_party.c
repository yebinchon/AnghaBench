
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct uni_add_party {int unrec; int * dtl; int dtl_repeat; int called_soft; int calling_soft; int lij_seqno; int * git; int uu; int eetd; int notify; int epref; int * tns; int scompl; int * callingsub; int calling; int * calledsub; int called; int blli; int bhli; int aal; } ;


 scalar_t__ IE_ISGOOD (int ) ;
 size_t UNI_NUM_IE_CALLEDSUB ;
 size_t UNI_NUM_IE_CALLINGSUB ;
 size_t UNI_NUM_IE_DTL ;
 size_t UNI_NUM_IE_GIT ;
 size_t UNI_NUM_IE_TNS ;

void
copy_msg_add_party(struct uni_add_party *src, struct uni_add_party *dst)
{
 u_int s, d;

 if(IE_ISGOOD(src->aal))
  dst->aal = src->aal;
 if(IE_ISGOOD(src->bhli))
  dst->bhli = src->bhli;
 if(IE_ISGOOD(src->blli))
  dst->blli = src->blli;
 if(IE_ISGOOD(src->called))
  dst->called = src->called;
 for(s = d = 0; s < UNI_NUM_IE_CALLEDSUB; s++)
  if(IE_ISGOOD(src->calledsub[s]))
   dst->calledsub[d++] = src->calledsub[s];
 if(IE_ISGOOD(src->calling))
  dst->calling = src->calling;
 for(s = d = 0; s < UNI_NUM_IE_CALLINGSUB; s++)
  if(IE_ISGOOD(src->callingsub[s]))
   dst->callingsub[d++] = src->callingsub[s];
 if(IE_ISGOOD(src->scompl))
  dst->scompl = src->scompl;
 for(s = d = 0; s < UNI_NUM_IE_TNS; s++)
  if(IE_ISGOOD(src->tns[s]))
   dst->tns[d++] = src->tns[s];
 if(IE_ISGOOD(src->epref))
  dst->epref = src->epref;
 if(IE_ISGOOD(src->notify))
  dst->notify = src->notify;
 if(IE_ISGOOD(src->eetd))
  dst->eetd = src->eetd;
 if(IE_ISGOOD(src->uu))
  dst->uu = src->uu;
 for(s = d = 0; s < UNI_NUM_IE_GIT; s++)
  if(IE_ISGOOD(src->git[s]))
   dst->git[d++] = src->git[s];
 if(IE_ISGOOD(src->lij_seqno))
  dst->lij_seqno = src->lij_seqno;
 if(IE_ISGOOD(src->calling_soft))
  dst->calling_soft = src->calling_soft;
 if(IE_ISGOOD(src->called_soft))
  dst->called_soft = src->called_soft;
 if(IE_ISGOOD(src->dtl_repeat))
  dst->dtl_repeat = src->dtl_repeat;
 for(s = d = 0; s < UNI_NUM_IE_DTL; s++)
  if(IE_ISGOOD(src->dtl[s]))
   dst->dtl[d++] = src->dtl[s];
 if(IE_ISGOOD(src->unrec))
  dst->unrec = src->unrec;
}
