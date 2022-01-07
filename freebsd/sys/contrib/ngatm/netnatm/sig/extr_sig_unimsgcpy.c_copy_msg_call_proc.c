
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_call_proc {int unrec; int notify; int epref; int connid; } ;


 scalar_t__ IE_ISGOOD (int ) ;

void
copy_msg_call_proc(struct uni_call_proc *src, struct uni_call_proc *dst)
{
 if(IE_ISGOOD(src->connid))
  dst->connid = src->connid;
 if(IE_ISGOOD(src->epref))
  dst->epref = src->epref;
 if(IE_ISGOOD(src->notify))
  dst->notify = src->notify;
 if(IE_ISGOOD(src->unrec))
  dst->unrec = src->unrec;
}
