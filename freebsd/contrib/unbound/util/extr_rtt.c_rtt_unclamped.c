
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtt_info {scalar_t__ rto; int srtt; int rttvar; } ;


 scalar_t__ calc_rto (struct rtt_info const*) ;

int
rtt_unclamped(const struct rtt_info* rtt)
{
 if(calc_rto(rtt) != rtt->rto) {

  return rtt->rto;
 }

 return rtt->srtt + 4*rtt->rttvar;
}
