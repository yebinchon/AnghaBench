
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int dummy; } ;
struct rtprio {int dummy; } ;
typedef int lwpid_t ;


 int RTP_LOOKUP ;
 int _rtp_to_schedparam (struct rtprio*,int*,struct sched_param*) ;
 int rtprio_thread (int ,int ,struct rtprio*) ;

int
_thr_getscheduler(lwpid_t lwpid, int *policy, struct sched_param *param)
{
 struct rtprio rtp;
 int ret;

 ret = rtprio_thread(RTP_LOOKUP, lwpid, &rtp);
 if (ret == -1)
  return (ret);
 _rtp_to_schedparam(&rtp, policy, param);
 return (0);
}
