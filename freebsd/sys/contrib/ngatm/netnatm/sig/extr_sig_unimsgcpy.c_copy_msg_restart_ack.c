
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_restart_ack {int unrec; int restart; int connid; } ;


 scalar_t__ IE_ISGOOD (int ) ;

void
copy_msg_restart_ack(struct uni_restart_ack *src, struct uni_restart_ack *dst)
{
 if(IE_ISGOOD(src->connid))
  dst->connid = src->connid;
 if(IE_ISGOOD(src->restart))
  dst->restart = src->restart;
 if(IE_ISGOOD(src->unrec))
  dst->unrec = src->unrec;
}
