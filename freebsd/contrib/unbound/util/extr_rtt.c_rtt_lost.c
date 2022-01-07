
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtt_info {int rto; } ;


 int RTT_MAX_TIMEOUT ;

void
rtt_lost(struct rtt_info* rtt, int orig)
{



 if(rtt->rto < orig)
  return;




 orig *= 2;
 if(rtt->rto <= orig) {
  rtt->rto = orig;
  if(rtt->rto > RTT_MAX_TIMEOUT)
   rtt->rto = RTT_MAX_TIMEOUT;
 }
}
