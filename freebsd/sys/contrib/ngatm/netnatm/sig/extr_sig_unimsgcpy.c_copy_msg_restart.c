
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_restart {int unrec; int restart; int connid; } ;


 scalar_t__ IE_ISGOOD (int ) ;

void
copy_msg_restart(struct uni_restart *src, struct uni_restart *dst)
{
 if(IE_ISGOOD(src->connid))
  dst->connid = src->connid;
 if(IE_ISGOOD(src->restart))
  dst->restart = src->restart;
 if(IE_ISGOOD(src->unrec))
  dst->unrec = src->unrec;
}
