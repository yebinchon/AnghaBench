
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {void* sched_priority; } ;
struct rtprio {void* prio; int type; } ;


 int RTP_PRIO_FIFO ;
 void* RTP_PRIO_MAX ;
 int RTP_PRIO_NORMAL ;
 int RTP_PRIO_REALTIME ;




int
_schedparam_to_rtp(int policy, const struct sched_param *param,
 struct rtprio *rtp)
{
 switch(policy) {
 case 128:
  rtp->type = RTP_PRIO_REALTIME;
  rtp->prio = RTP_PRIO_MAX - param->sched_priority;
  break;
 case 130:
  rtp->type = RTP_PRIO_FIFO;
  rtp->prio = RTP_PRIO_MAX - param->sched_priority;
  break;
 case 129:
 default:
  rtp->type = RTP_PRIO_NORMAL;
  rtp->prio = 0;
  break;
 }
 return (0);
}
