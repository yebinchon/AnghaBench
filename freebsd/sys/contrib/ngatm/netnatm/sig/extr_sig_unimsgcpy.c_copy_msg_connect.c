
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct uni_connect {int unrec; int report; int called_soft; int abradd; int abrsetup; int facility; int exqos; int traffic; int uu; int * git; int eetd; int connedsub; int conned; int notify; int epref; int connid; int blli; int aal; } ;


 scalar_t__ IE_ISGOOD (int ) ;
 size_t UNI_NUM_IE_GIT ;

void
copy_msg_connect(struct uni_connect *src, struct uni_connect *dst)
{
 u_int s, d;

 if(IE_ISGOOD(src->aal))
  dst->aal = src->aal;
 if(IE_ISGOOD(src->blli))
  dst->blli = src->blli;
 if(IE_ISGOOD(src->connid))
  dst->connid = src->connid;
 if(IE_ISGOOD(src->epref))
  dst->epref = src->epref;
 if(IE_ISGOOD(src->notify))
  dst->notify = src->notify;
 if(IE_ISGOOD(src->conned))
  dst->conned = src->conned;
 if(IE_ISGOOD(src->connedsub))
  dst->connedsub = src->connedsub;
 if(IE_ISGOOD(src->eetd))
  dst->eetd = src->eetd;
 for(s = d = 0; s < UNI_NUM_IE_GIT; s++)
  if(IE_ISGOOD(src->git[s]))
   dst->git[d++] = src->git[s];
 if(IE_ISGOOD(src->uu))
  dst->uu = src->uu;
 if(IE_ISGOOD(src->traffic))
  dst->traffic = src->traffic;
 if(IE_ISGOOD(src->exqos))
  dst->exqos = src->exqos;
 if(IE_ISGOOD(src->facility))
  dst->facility = src->facility;
 if(IE_ISGOOD(src->abrsetup))
  dst->abrsetup = src->abrsetup;
 if(IE_ISGOOD(src->abradd))
  dst->abradd = src->abradd;
 if(IE_ISGOOD(src->called_soft))
  dst->called_soft = src->called_soft;
 if(IE_ISGOOD(src->report))
  dst->report = src->report;
 if(IE_ISGOOD(src->unrec))
  dst->unrec = src->unrec;
}
