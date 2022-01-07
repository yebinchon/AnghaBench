
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct uni_alerting {int unrec; int report; int uu; int * git; int notify; int epref; int connid; } ;


 scalar_t__ IE_ISGOOD (int ) ;
 size_t UNI_NUM_IE_GIT ;

void
copy_msg_alerting(struct uni_alerting *src, struct uni_alerting *dst)
{
 u_int s, d;

 if(IE_ISGOOD(src->connid))
  dst->connid = src->connid;
 if(IE_ISGOOD(src->epref))
  dst->epref = src->epref;
 if(IE_ISGOOD(src->notify))
  dst->notify = src->notify;
 for(s = d = 0; s < UNI_NUM_IE_GIT; s++)
  if(IE_ISGOOD(src->git[s]))
   dst->git[d++] = src->git[s];
 if(IE_ISGOOD(src->uu))
  dst->uu = src->uu;
 if(IE_ISGOOD(src->report))
  dst->report = src->report;
 if(IE_ISGOOD(src->unrec))
  dst->unrec = src->unrec;
}
