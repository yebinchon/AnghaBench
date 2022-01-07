
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtt_info {int srtt; int rttvar; int rto; } ;


 int calc_rto (struct rtt_info*) ;

void
rtt_update(struct rtt_info* rtt, int ms)
{
 int delta = ms - rtt->srtt;
 rtt->srtt += delta / 8;
 if(delta < 0)
  delta = -delta;
 rtt->rttvar += (delta - rtt->rttvar) / 4;
 rtt->rto = calc_rto(rtt);
}
