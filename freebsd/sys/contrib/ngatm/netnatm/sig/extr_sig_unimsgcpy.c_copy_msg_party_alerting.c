
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct uni_party_alerting {int unrec; int * git; int uu; int notify; int epref; } ;


 scalar_t__ IE_ISGOOD (int ) ;
 size_t UNI_NUM_IE_GIT ;

void
copy_msg_party_alerting(struct uni_party_alerting *src, struct uni_party_alerting *dst)
{
 u_int s, d;

 if(IE_ISGOOD(src->epref))
  dst->epref = src->epref;
 if(IE_ISGOOD(src->notify))
  dst->notify = src->notify;
 if(IE_ISGOOD(src->uu))
  dst->uu = src->uu;
 for(s = d = 0; s < UNI_NUM_IE_GIT; s++)
  if(IE_ISGOOD(src->git[s]))
   dst->git[d++] = src->git[s];
 if(IE_ISGOOD(src->unrec))
  dst->unrec = src->unrec;
}
