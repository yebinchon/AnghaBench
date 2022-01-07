
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_facility {int unrec; int notify; int calling; int calledsub; int called; int facility; } ;


 scalar_t__ IE_ISGOOD (int ) ;

void
copy_msg_facility(struct uni_facility *src, struct uni_facility *dst)
{
 if(IE_ISGOOD(src->facility))
  dst->facility = src->facility;
 if(IE_ISGOOD(src->called))
  dst->called = src->called;
 if(IE_ISGOOD(src->calledsub))
  dst->calledsub = src->calledsub;
 if(IE_ISGOOD(src->calling))
  dst->calling = src->calling;
 if(IE_ISGOOD(src->notify))
  dst->notify = src->notify;
 if(IE_ISGOOD(src->unrec))
  dst->unrec = src->unrec;
}
