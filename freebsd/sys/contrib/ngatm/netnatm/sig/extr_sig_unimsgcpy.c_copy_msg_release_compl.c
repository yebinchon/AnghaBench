
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uni_release_compl {int unrec; int crankback; int uu; int * git; int * cause; } ;


 scalar_t__ IE_ISGOOD (int ) ;
 int UNI_NUM_IE_GIT ;

void
copy_msg_release_compl(struct uni_release_compl *src, struct uni_release_compl *dst)
{
 u_int s, d;

 for(s = d = 0; s < 2; s++)
  if(IE_ISGOOD(src->cause[s]))
   dst->cause[d++] = src->cause[s];
 for(s = d = 0; s < UNI_NUM_IE_GIT; s++)
  if(IE_ISGOOD(src->git[s]))
   dst->git[d++] = src->git[s];
 if(IE_ISGOOD(src->uu))
  dst->uu = src->uu;
 if(IE_ISGOOD(src->crankback))
  dst->crankback = src->crankback;
 if(IE_ISGOOD(src->unrec))
  dst->unrec = src->unrec;
}
