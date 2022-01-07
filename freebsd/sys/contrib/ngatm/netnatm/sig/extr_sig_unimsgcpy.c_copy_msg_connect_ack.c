
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_connect_ack {int unrec; int notify; } ;


 scalar_t__ IE_ISGOOD (int ) ;

void
copy_msg_connect_ack(struct uni_connect_ack *src, struct uni_connect_ack *dst)
{
 if(IE_ISGOOD(src->notify))
  dst->notify = src->notify;
 if(IE_ISGOOD(src->unrec))
  dst->unrec = src->unrec;
}
