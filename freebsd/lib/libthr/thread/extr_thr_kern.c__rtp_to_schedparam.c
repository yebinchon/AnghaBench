
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {void* sched_priority; } ;
struct rtprio {int type; void* prio; } ;



 void* RTP_PRIO_MAX ;

 int SCHED_FIFO ;
 int SCHED_OTHER ;
 int SCHED_RR ;

int
_rtp_to_schedparam(const struct rtprio *rtp, int *policy,
 struct sched_param *param)
{
 switch(rtp->type) {
 case 128:
  *policy = SCHED_RR;
  param->sched_priority = RTP_PRIO_MAX - rtp->prio;
  break;
 case 129:
  *policy = SCHED_FIFO;
  param->sched_priority = RTP_PRIO_MAX - rtp->prio;
  break;
 default:
  *policy = SCHED_OTHER;
  param->sched_priority = 0;
  break;
 }
 return (0);
}
