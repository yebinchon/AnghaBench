
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_notify {int unrec; int epref; int notify; } ;


 scalar_t__ IE_ISGOOD (int ) ;

void
copy_msg_notify(struct uni_notify *src, struct uni_notify *dst)
{
 if(IE_ISGOOD(src->notify))
  dst->notify = src->notify;
 if(IE_ISGOOD(src->epref))
  dst->epref = src->epref;
 if(IE_ISGOOD(src->unrec))
  dst->unrec = src->unrec;
}
