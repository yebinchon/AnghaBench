
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct uni_setup {int unrec; int mdcr; int report; int * dtl; int dtl_repeat; int called_soft; int calling_soft; int cscope; int abradd; int abrsetup; int exqos; int lij_seqno; int lij_param; int lij_callid; int * git; int uu; int mintraffic; int atraffic; int epref; int * tns; int scompl; int notify; int eetd; int qos; int connid; int * callingsub; int calling; int * calledsub; int called; int * blli; int blli_repeat; int bhli; int bearer; int traffic; int aal; } ;


 scalar_t__ IE_ISGOOD (int ) ;
 size_t UNI_NUM_IE_BLLI ;
 size_t UNI_NUM_IE_CALLEDSUB ;
 size_t UNI_NUM_IE_CALLINGSUB ;
 size_t UNI_NUM_IE_DTL ;
 size_t UNI_NUM_IE_GIT ;
 size_t UNI_NUM_IE_TNS ;

void
copy_msg_setup(struct uni_setup *src, struct uni_setup *dst)
{
 u_int s, d;

 if(IE_ISGOOD(src->aal))
  dst->aal = src->aal;
 if(IE_ISGOOD(src->traffic))
  dst->traffic = src->traffic;
 if(IE_ISGOOD(src->bearer))
  dst->bearer = src->bearer;
 if(IE_ISGOOD(src->bhli))
  dst->bhli = src->bhli;
 if(IE_ISGOOD(src->blli_repeat))
  dst->blli_repeat = src->blli_repeat;
 for(s = d = 0; s < UNI_NUM_IE_BLLI; s++)
  if(IE_ISGOOD(src->blli[s]))
   dst->blli[d++] = src->blli[s];
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
 if(IE_ISGOOD(src->connid))
  dst->connid = src->connid;
 if(IE_ISGOOD(src->qos))
  dst->qos = src->qos;
 if(IE_ISGOOD(src->eetd))
  dst->eetd = src->eetd;
 if(IE_ISGOOD(src->notify))
  dst->notify = src->notify;
 if(IE_ISGOOD(src->scompl))
  dst->scompl = src->scompl;
 for(s = d = 0; s < UNI_NUM_IE_TNS; s++)
  if(IE_ISGOOD(src->tns[s]))
   dst->tns[d++] = src->tns[s];
 if(IE_ISGOOD(src->epref))
  dst->epref = src->epref;
 if(IE_ISGOOD(src->atraffic))
  dst->atraffic = src->atraffic;
 if(IE_ISGOOD(src->mintraffic))
  dst->mintraffic = src->mintraffic;
 if(IE_ISGOOD(src->uu))
  dst->uu = src->uu;
 for(s = d = 0; s < UNI_NUM_IE_GIT; s++)
  if(IE_ISGOOD(src->git[s]))
   dst->git[d++] = src->git[s];
 if(IE_ISGOOD(src->lij_callid))
  dst->lij_callid = src->lij_callid;
 if(IE_ISGOOD(src->lij_param))
  dst->lij_param = src->lij_param;
 if(IE_ISGOOD(src->lij_seqno))
  dst->lij_seqno = src->lij_seqno;
 if(IE_ISGOOD(src->exqos))
  dst->exqos = src->exqos;
 if(IE_ISGOOD(src->abrsetup))
  dst->abrsetup = src->abrsetup;
 if(IE_ISGOOD(src->abradd))
  dst->abradd = src->abradd;
 if(IE_ISGOOD(src->cscope))
  dst->cscope = src->cscope;
 if(IE_ISGOOD(src->calling_soft))
  dst->calling_soft = src->calling_soft;
 if(IE_ISGOOD(src->called_soft))
  dst->called_soft = src->called_soft;
 if(IE_ISGOOD(src->dtl_repeat))
  dst->dtl_repeat = src->dtl_repeat;
 for(s = d = 0; s < UNI_NUM_IE_DTL; s++)
  if(IE_ISGOOD(src->dtl[s]))
   dst->dtl[d++] = src->dtl[s];
 if(IE_ISGOOD(src->report))
  dst->report = src->report;
 if(IE_ISGOOD(src->mdcr))
  dst->mdcr = src->mdcr;
 if(IE_ISGOOD(src->unrec))
  dst->unrec = src->unrec;
}
