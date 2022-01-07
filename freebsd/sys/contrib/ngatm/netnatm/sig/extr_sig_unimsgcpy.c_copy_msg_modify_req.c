
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct uni_modify_req {int unrec; int * git; int notify; int mintraffic; int atraffic; int traffic; } ;


 scalar_t__ IE_ISGOOD (int ) ;
 size_t UNI_NUM_IE_GIT ;

void
copy_msg_modify_req(struct uni_modify_req *src, struct uni_modify_req *dst)
{
 u_int s, d;

 if(IE_ISGOOD(src->traffic))
  dst->traffic = src->traffic;
 if(IE_ISGOOD(src->atraffic))
  dst->atraffic = src->atraffic;
 if(IE_ISGOOD(src->mintraffic))
  dst->mintraffic = src->mintraffic;
 if(IE_ISGOOD(src->notify))
  dst->notify = src->notify;
 for(s = d = 0; s < UNI_NUM_IE_GIT; s++)
  if(IE_ISGOOD(src->git[s]))
   dst->git[d++] = src->git[s];
 if(IE_ISGOOD(src->unrec))
  dst->unrec = src->unrec;
}
