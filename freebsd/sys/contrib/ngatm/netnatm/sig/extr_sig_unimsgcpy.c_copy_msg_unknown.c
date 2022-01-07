
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_unknown {int unrec; int epref; } ;


 scalar_t__ IE_ISGOOD (int ) ;

void
copy_msg_unknown(struct uni_unknown *src, struct uni_unknown *dst)
{
 if(IE_ISGOOD(src->epref))
  dst->epref = src->epref;
 if(IE_ISGOOD(src->unrec))
  dst->unrec = src->unrec;
}
