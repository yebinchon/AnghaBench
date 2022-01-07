
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtt_info {int srtt; int rttvar; } ;


 int RTT_MAX_TIMEOUT ;
 int RTT_MIN_TIMEOUT ;

__attribute__((used)) static int
calc_rto(const struct rtt_info* rtt)
{

 int rto = rtt->srtt + 4*rtt->rttvar;
 if(rto < RTT_MIN_TIMEOUT)
  rto = RTT_MIN_TIMEOUT;
 if(rto > RTT_MAX_TIMEOUT)
  rto = RTT_MAX_TIMEOUT;
 return rto;
}
