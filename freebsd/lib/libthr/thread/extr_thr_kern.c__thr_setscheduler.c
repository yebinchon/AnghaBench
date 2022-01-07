
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int dummy; } ;
struct rtprio {int dummy; } ;
typedef int lwpid_t ;


 int RTP_SET ;
 int _schedparam_to_rtp (int,struct sched_param const*,struct rtprio*) ;
 int rtprio_thread (int ,int ,struct rtprio*) ;

int
_thr_setscheduler(lwpid_t lwpid, int policy, const struct sched_param *param)
{
 struct rtprio rtp;

 _schedparam_to_rtp(policy, param, &rtp);
 return (rtprio_thread(RTP_SET, lwpid, &rtp));
}
